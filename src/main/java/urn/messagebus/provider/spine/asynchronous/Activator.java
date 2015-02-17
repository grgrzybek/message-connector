/**
 * $Id: Activator.java 02 Oct 2014
 * $Copyright: Copyright 2014 INPS.co.uk, L.P. All rights reserved.
 */
package urn.messagebus.provider.spine.asynchronous;

import org.osgi.framework.BundleActivator;
import org.osgi.framework.BundleContext;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import urn.messagebus.library.cache.CacheNames;
import urn.messagebus.library.cache.URIAliasCacheHelper;

/**
 * Activator for the MessageBus :: Provider :: Spine :: Asynchronous (ebXML)
 *
 * @author efthimios.kartsonakis
 */
public class Activator implements BundleActivator {

    private static final transient Logger LOG = LoggerFactory.getLogger(Activator.class);

    /**
     * {@inheritDoc}
     */
    @Override
    public void start(BundleContext context) throws Exception {

        LOG.info("Starting the MessageBus :: Provider :: Spine :: Asynchronous");
        URIAliasCacheHelper.newInstance(context).resolve(
                context.getBundle().getSymbolicName() + CacheNames.PID_SUFFIX.value, "provider.");
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public void stop(BundleContext bundleContext) throws Exception {

        LOG.info("Stopping the MessageBus :: Provider :: Spine :: Asynchronous");
    }
}
