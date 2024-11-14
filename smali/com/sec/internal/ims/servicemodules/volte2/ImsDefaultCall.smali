.class public Lcom/sec/internal/ims/servicemodules/volte2/ImsDefaultCall;
.super Lcom/sec/internal/ims/servicemodules/volte2/CallState;
.source "ImsDefaultCall.java"


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CallState;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V

    return-void
.end method

.method private checkATTHasEndReason()Z
    .locals 5

    .line 271
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorMessage:Ljava/lang/String;

    const-string v1, "call completed elsewhere"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v3, 0xbc2

    iput v3, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 282
    :goto_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistration:Lcom/sec/ims/ImsRegistration;

    if-eqz v3, :cond_3

    .line 283
    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->isSoftphoneEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 284
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorMessage:Ljava/lang/String;

    const-string v4, "call has been transferred to another device"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 287
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v0, 0xbba

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    goto :goto_1

    .line 289
    :cond_1
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorMessage:Ljava/lang/String;

    const-string/jumbo v4, "service not allowed in this location"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 292
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v0, 0xbbc

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    goto :goto_1

    .line 294
    :cond_2
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorMessage:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 297
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v0, 0xbb9

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    goto :goto_1

    :cond_3
    move v2, v0

    :goto_1
    return v2
.end method

.method private checkMDMNHasEndReason()Z
    .locals 3

    .line 305
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorMessage:Ljava/lang/String;

    const-string/jumbo v1, "push_to_master"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 306
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v0, 0xfa2

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    return v1

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorMessage:Ljava/lang/String;

    const-string v2, "MDMN_PULL_BY_PRIMARY"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 309
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v0, 0x1777

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    return v1

    .line 311
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorMessage:Ljava/lang/String;

    const-string v2, "MDMN_PULL_BY_SECONDARY"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 312
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v0, 0x1778

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private checkVZWHasEndReason()Z
    .locals 3

    .line 248
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorMessage:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "call completion elsewhere"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 249
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v0, 0x9c8

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    return v1

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorMessage:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "another device sent all devices busy response"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 253
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v0, 0x9c9

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    return v1

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorMessage:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "call has been pulled by another device"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 257
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v0, 0x9ca

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    return v1

    .line 259
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorMessage:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "deregistered"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 260
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mTryingReceived:Z

    if-nez v0, :cond_3

    const/16 v0, 0x6a5

    .line 261
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private handleGcfModeError()V
    .locals 2

    .line 428
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->getGcfMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    const/16 v1, 0x1f8

    if-ne v0, v1, :cond_0

    const/16 v0, 0x3e8

    .line 431
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    :cond_0
    return-void
.end method

.method private handleUssdError()V
    .locals 3

    .line 409
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    .line 410
    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isCSFBbySIPErrorCode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 411
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_1

    .line 412
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getOriginatingUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistration:Lcom/sec/ims/ImsRegistration;

    if-eqz v0, :cond_0

    .line 413
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getPreferredImpu()Lcom/sec/ims/util/NameAddr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 414
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getOriginatingUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/ims/util/ImsUri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[ANY_STATE] no CSFB USSD for virtual line."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v0, 0x25b

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    goto :goto_0

    .line 421
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v0, 0x193

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    :cond_1
    :goto_0
    return-void
.end method

.method private isCallForkingReason(Ljava/lang/String;)Z
    .locals 1

    const-string p0, "call completed elsewhere"

    .line 241
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "busy everywhere"

    .line 242
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "declined"

    .line 243
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 244
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isDbrLostIgnoredWhenAudioDbrReestablished()Z
    .locals 1

    .line 35
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v0, Lcom/sec/internal/constants/Mno;->SWISSCOM:Lcom/sec/internal/constants/Mno;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/Mno;->BITE_LATVIA:Lcom/sec/internal/constants/Mno;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/Mno;->LMT_LATVIA:Lcom/sec/internal/constants/Mno;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/Mno;->TELE2_LATVIA:Lcom/sec/internal/constants/Mno;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private notifyOnEpdgStateChanged()V
    .locals 3

    .line 560
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 563
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    .line 566
    :try_start_0
    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onEpdgStateChanged()V

    .line 567
    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onCallQualityChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 569
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 573
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method private notifyOnUssdIndication(II[B)V
    .locals 3

    .line 577
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 580
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    .line 583
    :try_start_0
    invoke-interface {v2, p1, p2, p3}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onUssdReceived(II[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 585
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 589
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method private setErrorCodeForAtt()V
    .locals 5

    .line 437
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    const-string v2, "Service not allowed in this location"

    const/16 v3, 0x193

    if-ne v1, v3, :cond_0

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorMessage:Ljava/lang/String;

    .line 438
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v1, 0xbbb

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    goto :goto_0

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    const/16 v4, 0x1f7

    if-ne v1, v4, :cond_1

    const-string v1, "Emergency calls over WiFi not allowed in this location"

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorMessage:Ljava/lang/String;

    .line 443
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 445
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v1, 0xbc0

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    .line 448
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistration:Lcom/sec/ims/ImsRegistration;

    if-eqz v0, :cond_5

    .line 449
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->isSoftphoneEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 450
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    const/16 v4, 0x25b

    if-ne v1, v4, :cond_2

    const-string v1, "Secondary device already in use"

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorMessage:Ljava/lang/String;

    .line 451
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 453
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v0, 0xbbe

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    goto :goto_1

    .line 454
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    const/16 v4, 0x1e0

    if-ne v1, v4, :cond_3

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorMessage:Ljava/lang/String;

    const-string v1, "You have an active call on another soft phone that must complete before you can use this soft phone"

    .line 455
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 459
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v0, 0xbbf

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    goto :goto_1

    .line 460
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    if-ne v1, v3, :cond_5

    .line 461
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorMessage:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 463
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v0, 0xbbc

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    goto :goto_1

    .line 465
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorMessage:Ljava/lang/String;

    const-string v1, "Simultaneous call limit has already been reached"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 467
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v0, 0xbbd

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method protected dbrLost_ANYSTATE(Landroid/os/Message;)V
    .locals 6

    .line 45
    iget p1, p1, Landroid/os/Message;->arg1:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    .line 47
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-boolean p1, p1, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mOnErrorDelayed:Z

    if-eqz p1, :cond_0

    .line 48
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string v0, "[ANYSTATE] Delaying CSFB is InProgress. Ignore DBR lost"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mOnErrorDelayed:Z

    return-void

    .line 53
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getDedicatedBearerState(I)I

    move-result p1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    .line 54
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsDefaultCall;->isDbrLostIgnoredWhenAudioDbrReestablished()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 55
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string p1, "[ANYSTATE] Audio dedicated bearer is re-established. Ignore DBR lost"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 59
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v2, 0xb

    invoke-virtual {p1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->getSipReasonFromUserReason(I)Lcom/sec/internal/constants/ims/SipReason;

    move-result-object v3

    iput-object v3, p1, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sipReason:Lcom/sec/internal/constants/ims/SipReason;

    .line 61
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v3

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v5, v4, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sipReason:Lcom/sec/internal/constants/ims/SipReason;

    invoke-interface {p1, v3, v5, v4}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->endCall(IILcom/sec/internal/constants/ims/SipReason;)I

    move-result p1

    const/16 v3, 0x4b1

    if-gez p1, :cond_2

    .line 62
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    new-instance p1, Lcom/sec/ims/util/SipError;

    const-string v0, ""

    invoke-direct {p1, v3, v0}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    const/4 v0, 0x4

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void

    .line 67
    :cond_2
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setEndType(I)V

    .line 68
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {p1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setEndReason(I)V

    .line 71
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v0, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-ne p1, v0, :cond_3

    .line 72
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v0, 0xa8b

    iput v0, p1, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    goto :goto_0

    .line 74
    :cond_3
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iput v3, p1, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    .line 76
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mEndingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsEndingCall;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    :cond_4
    return-void
.end method

.method protected ended_ANYSTATE(Landroid/os/Message;)V
    .locals 6

    .line 181
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_c

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 182
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorMessage:Ljava/lang/String;

    .line 185
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ANYSTATE] ENDED Reason "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x579

    const-string v3, "RTP Timeout"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v0, v1, :cond_0

    .line 187
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsDefaultCall;->checkVZWHasEndReason()Z

    move-result v0

    goto/16 :goto_2

    .line 188
    :cond_0
    sget-object v1, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_1

    .line 189
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsDefaultCall;->checkATTHasEndReason()Z

    move-result v0

    goto/16 :goto_2

    .line 190
    :cond_1
    sget-object v1, Lcom/sec/internal/constants/Mno;->MDMN:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_2

    .line 191
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsDefaultCall;->checkMDMNHasEndReason()Z

    move-result v0

    goto/16 :goto_2

    .line 192
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->IncomingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorMessage:Ljava/lang/String;

    .line 193
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsDefaultCall;->isCallForkingReason(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 194
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorMessage:Ljava/lang/String;

    const-string v1, "call completed elsewhere"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorMessage:Ljava/lang/String;

    .line 195
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 199
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorMessage:Ljava/lang/String;

    const-string v1, "busy everywhere"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorMessage:Ljava/lang/String;

    const-string v1, "declined"

    .line 200
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 202
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v1, 0xbc1

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    goto :goto_1

    .line 197
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v1, 0xbc2

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    goto :goto_1

    .line 204
    :cond_6
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TELSTRA:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_7

    .line 205
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorMessage:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 207
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iput v2, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    :goto_1
    move v0, v5

    goto :goto_2

    :cond_7
    move v0, v4

    .line 212
    :goto_2
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorMessage:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorMessage:Ljava/lang/String;

    const-string v3, "RTCP timeout"

    .line 213
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorMessage:Ljava/lang/String;

    const-string v3, "RTP-RTCP Timeout"

    .line 214
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 215
    :cond_8
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iput-boolean v5, v1, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mIsBigDataEndReason:Z

    .line 216
    iput v2, v1, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    .line 219
    :cond_9
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorMessage:Ljava/lang/String;

    const-string v2, "Audio Create Failure"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 220
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iput-boolean v5, v1, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mIsBigDataEndReason:Z

    const/16 v2, 0x3ef

    .line 221
    iput v2, v1, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    :cond_a
    if-ne v0, v5, :cond_b

    .line 225
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnError(ILjava/lang/String;)V

    goto :goto_3

    .line 227
    :cond_b
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mIsBigDataEndReason:Z

    if-nez v1, :cond_c

    .line 229
    new-instance v1, Lcom/sec/internal/constants/ims/SipReason;

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorMessage:Ljava/lang/String;

    new-array v3, v4, [Ljava/lang/String;

    const-string v4, "SIP"

    const/16 v5, 0xd2

    invoke-direct {v1, v4, v5, v2, v3}, Lcom/sec/internal/constants/ims/SipReason;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sipReason:Lcom/sec/internal/constants/ims/SipReason;

    .line 230
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iput v5, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    const-string v1, ""

    .line 231
    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorMessage:Ljava/lang/String;

    .line 236
    :cond_c
    :goto_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/StateMachine;->deferMessage(Landroid/os/Message;)V

    .line 237
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mEndingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsEndingCall;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    return-void
.end method

.method protected epdgConnChanged_ANYSTATE(Landroid/os/Message;)V
    .locals 3

    .line 549
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 550
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ANY_STATE] msg: ON_EPDG_CONNECTION_CHANGED "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->stopNetworkStatsOnPorts()V

    .line 554
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->startNetworkStatsOnPorts()V

    .line 556
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsDefaultCall;->notifyOnEpdgStateChanged()V

    return-void
.end method

.method protected error_ANYSTATE(Landroid/os/Message;)V
    .locals 8

    .line 319
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/ims/util/SipError;

    .line 320
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 322
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v0}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v3

    iput v3, v2, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    .line 323
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v0}, Lcom/sec/ims/util/SipError;->getReason()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v3, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/sec/ims/util/SipError;->getReason()Ljava/lang/String;

    move-result-object v3

    :goto_0
    iput-object v3, v2, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorMessage:Ljava/lang/String;

    .line 325
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    const/16 v5, 0x3ea

    if-ne v2, v5, :cond_1

    .line 326
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ANY_STATE] IMSService Restart. error="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v6, v6, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x11010007

    const-string/jumbo v5, "recovery from VoLTE module"

    .line 327
    invoke-static {v2, v5, v4}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;Z)V

    .line 328
    invoke-static {v3}, Lcom/sec/internal/helper/os/SystemWrapper;->exit(I)V

    goto :goto_1

    .line 330
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ANY_STATE] Unexpected ErrorCode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v6, v6, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": errorMessage "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v6, v6, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorMessage:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :goto_1
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v5, v2, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    const/16 v6, 0x193

    if-ne v5, v6, :cond_2

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorMessage:Ljava/lang/String;

    const-string v5, "Call switch failed"

    .line 335
    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 336
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 p1, 0x455

    invoke-virtual {p0, p1, v5}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnError(ILjava/lang/String;)V

    return-void

    .line 341
    :cond_2
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsDefaultCall;->handleUssdError()V

    .line 342
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsDefaultCall;->handleGcfModeError()V

    .line 344
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v5, Lcom/sec/internal/constants/Mno;->STARHUB:Lcom/sec/internal/constants/Mno;

    if-eq v2, v5, :cond_3

    sget-object v5, Lcom/sec/internal/constants/Mno;->SMARTFREN:Lcom/sec/internal/constants/Mno;

    if-eq v2, v5, :cond_3

    sget-object v5, Lcom/sec/internal/constants/Mno;->AIS:Lcom/sec/internal/constants/Mno;

    if-ne v2, v5, :cond_4

    .line 345
    :cond_3
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    const/16 v5, 0x1e0

    if-ne v2, v5, :cond_4

    .line 346
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string v5, "[ANY_STATE] TEMPORARILY_UNAVAILABLE -> REQUEST_TIMEOUT"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v5, 0x198

    iput v5, v2, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    .line 352
    :cond_4
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsDefaultCall;->handleUSACarrierError()V

    .line 353
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v5, Lcom/sec/internal/constants/Mno;->DISH:Lcom/sec/internal/constants/Mno;

    if-ne v2, v5, :cond_6

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistration:Lcom/sec/ims/ImsRegistration;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->isE911Call()Z

    move-result v2

    if-nez v2, :cond_6

    .line 359
    sget-object v2, Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;->ERROR_5XX:Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v5, v5, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    invoke-virtual {v2, v5}, Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;->equals(I)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 360
    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v5

    invoke-interface {v2, v5}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getTotalCallCount(I)I

    move-result v2

    if-ne v2, v4, :cond_5

    if-nez v1, :cond_5

    .line 361
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 362
    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationGovernor(I)Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 363
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->getNumOfPcscfIp()I

    move-result v0

    if-le v0, v4, :cond_6

    const/4 v0, 0x4

    move v1, v0

    goto :goto_2

    .line 366
    :cond_5
    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isClientError(Lcom/sec/ims/util/SipError;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 367
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 368
    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationGovernor(I)Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 370
    sget-object v2, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;->EVENT_CALL_SILENT_REDIAL_END:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v7, v5, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sipError:Lcom/sec/ims/util/SipError;

    iget v5, v5, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    invoke-interface {v0, v2, v7, v5}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onCallStatus(Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;Lcom/sec/ims/util/SipError;I)V

    .line 375
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    sget-object v5, Lcom/sec/internal/constants/Mno;->GCF:Lcom/sec/internal/constants/Mno;

    sget-object v7, Lcom/sec/internal/constants/Mno;->DISH:Lcom/sec/internal/constants/Mno;

    filled-new-array {v2, v5, v7}, [Lcom/sec/internal/constants/Mno;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-lez v1, :cond_7

    .line 376
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iput-boolean v4, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRetryInprogress:Z

    .line 379
    :cond_7
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isTmobile()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v2, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    const/16 v5, 0x25b

    if-ne v2, v5, :cond_8

    const/16 v2, 0x1e6

    .line 380
    iput v2, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    .line 383
    :cond_8
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 384
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v2, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    const/16 v5, 0x1f3

    if-ne v2, v5, :cond_9

    const/16 v2, 0x836

    .line 385
    iput v2, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    goto :goto_3

    :cond_9
    const/16 v5, 0x2c5

    if-ne v2, v5, :cond_a

    const/16 v2, 0x45a

    .line 387
    iput v2, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    .line 391
    :cond_a
    :goto_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcSecondaryType(I)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v2, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    if-ne v2, v6, :cond_b

    const-string v2, "SD_NOT_REGISTERED"

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorMessage:Ljava/lang/String;

    .line 393
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 394
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v2, 0x194

    iput v2, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    .line 397
    :cond_b
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isJpn()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    const/4 v2, 0x7

    if-ne v0, v2, :cond_c

    .line 398
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getAvailableSimCount()I

    move-result v0

    if-le v0, v4, :cond_c

    .line 399
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v1, 0xa89

    const-string v2, "EMERGENCY PERM FAILURE"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnError(ILjava/lang/String;)V

    .line 400
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->stopEmergencyRegistration(I)V

    goto :goto_4

    .line 402
    :cond_c
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v2, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorMessage:Ljava/lang/String;

    if-lez v1, :cond_d

    move v3, v1

    :cond_d
    invoke-virtual {v0, v2, v4, v3}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnError(ILjava/lang/String;I)V

    .line 404
    :goto_4
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mEndingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsEndingCall;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 405
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorMessage:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {p0, v2, v0, p1, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method protected handleBigData_ANYSTATE(Landroid/os/Message;)V
    .locals 4

    .line 144
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    const/16 v1, 0x96e

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "ro.boot.hardware"

    const-string v1, ""

    .line 145
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "qcom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    const/16 v1, 0x1f7

    if-eq v0, v1, :cond_1

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2, v1}, Lcom/sec/internal/helper/ImsCallUtil;->convertCallEndReasonToFramework(II)I

    move-result v1

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[handleBigData_ANYSTATE] setEndReason: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setEndReason(I)V

    .line 154
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-gez p1, :cond_2

    .line 156
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v0, 0xdc

    iput v0, p1, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    .line 159
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    const/16 v0, 0x6a5

    const-string v1, "Network disconnected"

    if-ne p1, v0, :cond_3

    .line 160
    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mIsBigDataEndReason:Z

    .line 161
    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorMessage:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const/16 v0, 0x453

    if-ne p1, v0, :cond_4

    .line 163
    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mIsBigDataEndReason:Z

    const-string p1, "Network handover"

    .line 164
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorMessage:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const/16 v0, 0x9c7

    if-ne p1, v0, :cond_5

    .line 166
    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mIsBigDataEndReason:Z

    .line 167
    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorMessage:Ljava/lang/String;

    goto :goto_0

    :cond_5
    const/16 v0, 0x4b1

    if-ne p1, v0, :cond_6

    .line 169
    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mIsBigDataEndReason:Z

    const-string p1, "Qos failure"

    .line 170
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorMessage:Ljava/lang/String;

    goto :goto_0

    :cond_6
    const/16 v0, 0x1777

    if-ne p1, v0, :cond_7

    .line 172
    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mIsBigDataEndReason:Z

    const-string/jumbo p1, "pull call by primary"

    .line 173
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorMessage:Ljava/lang/String;

    goto :goto_0

    :cond_7
    const/16 v0, 0x6a7

    if-ne p1, v0, :cond_8

    .line 175
    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mIsBigDataEndReason:Z

    .line 176
    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorMessage:Ljava/lang/String;

    :cond_8
    :goto_0
    return-void
.end method

.method public handleUSACarrierError()V
    .locals 3

    .line 475
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_0

    .line 476
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    sget-object v1, Lcom/sec/internal/constants/ims/SipErrorBase;->DECLINE:Lcom/sec/ims/util/SipError;

    invoke-virtual {v1}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 477
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getOriginatingUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistration:Lcom/sec/ims/ImsRegistration;

    if-eqz v0, :cond_0

    .line 478
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getPreferredImpu()Lcom/sec/ims/util/NameAddr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 479
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getOriginatingUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/ims/util/ImsUri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[ANY_STATE] no CSFB for virtual line."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v1, 0x96d

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    .line 486
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_1

    .line 487
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    const/16 v2, 0x193

    if-ne v1, v2, :cond_1

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorMessage:Ljava/lang/String;

    .line 488
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "simultaneous call limit has already been reached"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 490
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v1, 0x9ce

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    .line 493
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_2

    .line 494
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsDefaultCall;->setErrorCodeForAtt()V

    :cond_2
    return-void
.end method

.method protected terminate_ANYSTATE(Landroid/os/Message;)V
    .locals 10

    .line 82
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setEndType(I)V

    .line 83
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v2

    iput v2, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    .line 85
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v2, 0x13

    if-ne v0, v2, :cond_0

    .line 86
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 p1, 0xfa1

    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    .line 87
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnEnded(I)V

    return-void

    :cond_0
    const/16 v2, 0x8

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    .line 92
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iput-boolean v3, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->srvccStarted:Z

    .line 93
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[ANYSTATE] SRVCC HO Success"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v2, 0x30000014

    invoke-static {v2, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-boolean v2, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->srvccStarted:Z

    if-eqz v2, :cond_2

    .line 98
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string p1, "[ANYSTATE] SRVCC HO ongoing, do not terminate call"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 101
    :cond_2
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->getSipReasonFromUserReason(I)Lcom/sec/internal/constants/ims/SipReason;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sipReason:Lcom/sec/internal/constants/ims/SipReason;

    .line 102
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v0, v2, :cond_6

    .line 103
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    const/16 v2, 0x1f7

    const/16 v4, 0x1c

    if-eq v0, v2, :cond_3

    if-ne v0, v4, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    .line 104
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isE911Call(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 105
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->getSipReasonFromUserReason(I)Lcom/sec/internal/constants/ims/SipReason;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sipReason:Lcom/sec/internal/constants/ims/SipReason;

    .line 106
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 107
    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationGovernor(I)Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v2, "mmtel"

    .line 109
    sget-object v4, Lcom/sec/internal/constants/ims/SipErrorBase;->SIP_INVITE_TIMEOUT:Lcom/sec/ims/util/SipError;

    invoke-interface {v0, v2, v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onSipError(Ljava/lang/String;Lcom/sec/ims/util/SipError;)Lcom/sec/ims/util/SipError;

    goto :goto_0

    .line 111
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getDRBLost()Z

    move-result v0

    const/16 v2, 0xb

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    if-ne v0, v2, :cond_6

    .line 112
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string v4, "TMOUS, DBR Lost"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->getSipReasonFromUserReason(I)Lcom/sec/internal/constants/ims/SipReason;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sipReason:Lcom/sec/internal/constants/ims/SipReason;

    .line 116
    :cond_6
    :goto_0
    iget p1, p1, Landroid/os/Message;->arg2:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_8

    .line 117
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[ANYSTATE] Local Release"

    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setEndType(I)V

    .line 119
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sipReason:Lcom/sec/internal/constants/ims/SipReason;

    if-nez v0, :cond_7

    .line 120
    new-instance v0, Lcom/sec/internal/constants/ims/SipReason;

    const-string v5, ""

    const/4 v6, 0x0

    const-string v7, ""

    const/4 v8, 0x1

    new-array v9, v3, [Ljava/lang/String;

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/constants/ims/SipReason;-><init>(Ljava/lang/String;ILjava/lang/String;Z[Ljava/lang/String;)V

    iput-object v0, p1, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sipReason:Lcom/sec/internal/constants/ims/SipReason;

    goto :goto_1

    .line 122
    :cond_7
    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/SipReason;->setLocalRelease(Z)V

    .line 126
    :cond_8
    :goto_1
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v0, Lcom/sec/internal/constants/Mno;->DISH:Lcom/sec/internal/constants/Mno;

    if-ne p1, v0, :cond_9

    .line 127
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistration:Lcom/sec/ims/ImsRegistration;

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->isE911Call()Z

    move-result p1

    if-nez p1, :cond_9

    .line 128
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 129
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationGovernor(I)Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 131
    sget-object v0, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;->EVENT_CALL_SILENT_REDIAL_END:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sipError:Lcom/sec/ims/util/SipError;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    invoke-interface {p1, v0, v2, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onCallStatus(Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;Lcom/sec/ims/util/SipError;I)V

    .line 135
    :cond_9
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v2, v1, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sipReason:Lcom/sec/internal/constants/ims/SipReason;

    invoke-interface {p1, v0, v2, v1}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->endCall(IILcom/sec/internal/constants/ims/SipReason;)I

    move-result p1

    if-gez p1, :cond_a

    .line 136
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    new-instance p1, Lcom/sec/ims/util/SipError;

    const/16 v0, 0xe6

    const-string v1, ""

    invoke-direct {p1, v0, v1}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    const/4 v0, 0x4

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v3, v1, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    :cond_a
    return-void
.end method

.method protected update_ANYSTATE(Landroid/os/Message;)V
    .locals 5

    .line 522
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    const-string/jumbo v0, "profile"

    .line 523
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/volte2/data/CallProfile;

    if-nez v0, :cond_2

    const-string v0, "cause"

    .line 526
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x64

    const-string v2, ","

    if-ne v0, v1, :cond_0

    .line 528
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string v0, "[ANYSTATE] SRVCC HO STARTED"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const v0, 0x30000011

    invoke-static {v0, p1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 530
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->srvccStarted:Z

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0xc8

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    .line 532
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string v0, "[ANYSTATE] SRVCC HO SUCCESS"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const v0, 0x30000012

    invoke-static {v0, p1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 534
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iput-boolean v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->srvccStarted:Z

    goto :goto_0

    :cond_1
    const/16 v1, 0x1e7

    if-ne v0, v1, :cond_3

    .line 536
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[ANYSTATE] SRVCC HO FAILURE OR CANCELED"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x30000013

    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 538
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iput-boolean v3, v1, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->srvccStarted:Z

    .line 539
    new-instance v1, Lcom/sec/internal/constants/ims/SipReason;

    const-string/jumbo v2, "reasonText"

    .line 540
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "SIP"

    invoke-direct {v1, v3, v0, p1, v2}, Lcom/sec/internal/constants/ims/SipReason;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    .line 541
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result p0

    invoke-interface {p1, p0, v1}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->sendReInvite(ILcom/sec/internal/constants/ims/SipReason;)I

    goto :goto_0

    .line 544
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    const-string p1, "[ANYSTATE] Profile-related update is possible in InCall state only"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method

.method protected ussdIndication_ANYSTATE(Landroid/os/Message;)V
    .locals 3

    .line 499
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    const-string/jumbo v0, "status"

    .line 500
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "dcs"

    .line 502
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "data"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsDefaultCall;->notifyOnUssdIndication(II[B)V

    .line 504
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ANYSTATE] USSD indi, change status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    if-ne v0, p1, :cond_0

    .line 507
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mInCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsInCall;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    if-ne v0, p1, :cond_1

    .line 508
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 509
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getDirection()I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 510
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mInCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsInCall;

    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 511
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "type"

    const/4 v1, 0x4

    .line 512
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "info"

    const-string v1, ""

    .line 513
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v0, 0x65

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 516
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mEndingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsEndingCall;

    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 517
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    :goto_0
    return-void
.end method
