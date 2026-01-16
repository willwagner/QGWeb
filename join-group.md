---
title: Join Group
subtitle: You've been invited to join a Quantified Golf group
layout: page
permalink: /join-group/
---

<div id="join-group-content">
    <!-- Loading state -->
    <div id="loading-state" class="has-text-centered" style="padding: 2rem 0;">
        <p class="content">Loading invite information...</p>
    </div>

    <!-- Content with invite code -->
    <div id="invite-content" style="display: none;">
        <div class="has-text-centered" style="margin: 2rem 0;">
            <figure class="image is-inline-block" style="max-width: 200px; margin: 0 auto 2rem;">
                <img src="{{site.baseurl}}{{site.site-image}}" alt="{{site.title}} Logo" style="width: 100%; height: auto; border-radius: 1rem;">
            </figure>
        </div>

        <div class="notification is-info" style="margin: 2rem auto; max-width: 600px;">
            <p class="content is-size-5" style="margin-bottom: 1rem;">
                <strong>You've been invited to join a Quantified Golf group!</strong>
            </p>
            <p class="content" id="invite-code-display" style="font-size: 1.5rem; font-weight: bold; letter-spacing: 0.2em; margin: 1rem 0;">
                <!-- Invite code will be inserted here -->
            </p>
        </div>

        <div class="columns" style="margin-top: 3rem;">
            <!-- iOS App Section -->
            <div class="column is-half-desktop is-full-tablet">
                <div class="box" style="height: 100%;">
                    <h2 class="title is-3 has-text-centered">Join on iOS</h2>
                    <hr class="has-background-black">
                    <div class="content">
                        <p style="margin-bottom: 1.5rem;">
                            If you have the Quantified Golf app installed on your iOS device, clicking the link should have opened it automatically. If not, you can:
                        </p>
                        <ol>
                            <li>Download the app from the App Store (if you haven't already)</li>
                            <li>Open the app and sign in</li>
                            <li>Use the invite code shown above to join the group</li>
                        </ol>
                        <div class="has-text-centered" style="margin-top: 2rem;">
                            <a href="https://apps.apple.com/us/app/quantified-golf-app/id6755897826" 
                               class="button is-large is-rounded" 
                               style="background-color: #5BA3F5; color: white; font-weight: 600; padding: 1rem 2rem;">
                                Download from the App Store
                            </a>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Instructions Section -->
            <div class="column is-half-desktop is-full-tablet">
                <div class="box" style="height: 100%;">
                    <h2 class="title is-3 has-text-centered">How to Join</h2>
                    <hr class="has-background-black">
                    <div class="content">
                        <p style="margin-bottom: 1rem;"><strong>To join the group:</strong></p>
                        <ol>
                            <li>Open the Quantified Golf app on your iOS device</li>
                            <li>Navigate to the Groups section</li>
                            <li>Tap "Join Group" or "Enter Invite Code"</li>
                            <li>Enter the invite code: <strong id="invite-code-copy" style="font-family: monospace; font-size: 1.2em;"></strong></li>
                        </ol>
                        <p style="margin-top: 1.5rem; font-size: 0.9em; color: #666;">
                            <em>Note: The Quantified Golf app is currently available for iOS devices only. If you're on a computer or Android device, you'll need to use an iOS device to join the group.</em>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- No invite code state -->
    <div id="no-invite-content" style="display: none;">
        <div class="has-text-centered" style="margin: 2rem 0;">
            <figure class="image is-inline-block" style="max-width: 200px; margin: 0 auto 2rem;">
                <img src="{{site.baseurl}}{{site.site-image}}" alt="{{site.title}} Logo" style="width: 100%; height: auto; border-radius: 1rem;">
            </figure>
        </div>

        <div class="notification is-warning" style="margin: 2rem auto; max-width: 600px;">
            <p class="content is-size-5">
                <strong>No invite code found</strong>
            </p>
            <p class="content" style="margin-top: 1rem;">
                This page is used for joining Quantified Golf groups via invite links. If you received an invite link, make sure you're using the complete URL with the invite code.
            </p>
        </div>

        <div class="has-text-centered" style="margin-top: 3rem;">
            <p class="content" style="margin-bottom: 1.5rem;">
                Don't have the app yet? Download it from the App Store:
            </p>
            <a href="https://apps.apple.com/us/app/quantified-golf-app/id6755897826" 
               class="button is-large is-rounded" 
               style="background-color: #5BA3F5; color: white; font-weight: 600; padding: 1rem 2rem;">
                Download from the App Store
            </a>
        </div>
    </div>
</div>

<script>
(function() {
    // Get invite code from URL query parameter
    const urlParams = new URLSearchParams(window.location.search);
    const inviteCode = urlParams.get('code');

    const loadingState = document.getElementById('loading-state');
    const inviteContent = document.getElementById('invite-content');
    const noInviteContent = document.getElementById('no-invite-content');
    const inviteCodeDisplay = document.getElementById('invite-code-display');
    const inviteCodeCopy = document.getElementById('invite-code-copy');

    // Hide loading state
    loadingState.style.display = 'none';

    if (inviteCode && inviteCode.trim() !== '') {
        // Show invite code
        inviteCodeDisplay.textContent = inviteCode;
        inviteCodeCopy.textContent = inviteCode;
        inviteContent.style.display = 'block';
    } else {
        // No invite code found
        noInviteContent.style.display = 'block';
    }
})();
</script>


