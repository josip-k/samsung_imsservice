.class Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;
.super Ljava/lang/Object;
.source "ImsCallSessionEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsCallEventHandler"
.end annotation


# instance fields
.field final mEvent:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;


# direct methods
.method static bridge synthetic -$$Nest$mhandleCalling(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->handleCalling()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleEarlyMediaStart(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->handleEarlyMediaStart()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleEnded(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->handleEnded()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleError(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->handleError()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleEstablished(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->handleEstablished()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleExtendToConference(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->handleExtendToConference()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleHeldBoth(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->handleHeldBoth()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleHeldLocal(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->handleHeldLocal()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleHeldRemote(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->handleHeldRemote()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleModified(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->handleModified()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleModifyRequested(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->handleModifyRequested()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleRefreshFail(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->handleRefreshFail()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleRingingBack(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->handleRingingBack()V

    return-void
.end method

.method private constructor <init>(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->mEvent:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;)V

    return-void
.end method

.method private handleCalling()V
    .locals 4

    .line 277
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmSession(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->mEvent:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getParams()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->updateCallProfile(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;)V

    .line 278
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetsmCallStateMachine(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    move-result-object v0

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    .line 279
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmCallProfile(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getReplaceSipCallId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmModule(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmCallProfile(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getReplaceSipCallId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getSessionBySipCallId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 282
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "replace UserAgent. replaceSessionId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " newSessionId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmSession(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v3

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mSessionId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmVolteSvcIntf(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmSession(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p0

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mSessionId:I

    invoke-interface {v1, v0, p0}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->replaceUserAgent(II)V

    :cond_0
    return-void
.end method

.method private handleEarlyMediaStart()V
    .locals 4

    .line 514
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmSession(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->mEvent:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getParams()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->updateCallProfile(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;)V

    .line 518
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->mEvent:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getParams()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getDtmfEvent()Ljava/lang/String;

    move-result-object v0

    .line 519
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmCallProfile(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->mEvent:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getRemoteVideoCapa()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/ims/volte2/data/CallProfile;->setRemoteVideoCapa(Z)V

    .line 520
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->mEvent:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getParams()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getVideoCrbtType()I

    move-result v1

    if-lez v1, :cond_0

    .line 522
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmCallProfile(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/ims/volte2/data/CallProfile;->setVideoCrbtValid(Z)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 524
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmCallProfile(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sec/ims/volte2/data/CallProfile;->setVideoCRBT(Z)V

    .line 525
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmCallProfile(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/ims/volte2/data/CallProfile;->setDtmfEvent(Ljava/lang/String;)V

    .line 526
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isVideoCRBT : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmCallProfile(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->isVideoCRBT()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", dtmfEvent : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetsmCallStateMachine(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->mEvent:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getErrorCode()Lcom/sec/ims/util/SipError;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result p0

    const/16 v1, 0x20

    invoke-virtual {v0, v1, p0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(II)V

    return-void
.end method

.method private handleEnded()V
    .locals 6

    .line 455
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmSession(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getVideoCrbtSupportType()I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmCallProfile(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setVideoCRBT(Z)V

    .line 459
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmCallProfile(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setDtmfEvent(Ljava/lang/String;)V

    .line 460
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isVideoCRBT : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmCallProfile(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->isVideoCRBT()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->mEvent:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getErrorCode()Lcom/sec/ims/util/SipError;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_2

    .line 466
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetsmCallStateMachine(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    goto/16 :goto_1

    .line 468
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmSession(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcSecondaryType(I)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "MDMN_PULL_BY_PRIMARY"

    .line 469
    invoke-virtual {v0}, Lcom/sec/ims/util/SipError;->getReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 470
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->getCurrentLineOwnerDeviceId()Ljava/lang/String;

    move-result-object v2

    .line 471
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmCallProfile(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sec/ims/volte2/data/CallProfile;->setCmcDeviceId(Ljava/lang/String;)V

    .line 473
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetsmCallStateMachine(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    move-result-object v2

    .line 474
    invoke-virtual {v0}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v3

    const/16 v4, 0x1777

    .line 476
    invoke-virtual {v0}, Lcom/sec/ims/util/SipError;->getReason()Ljava/lang/String;

    move-result-object v5

    .line 473
    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/sec/internal/helper/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_0

    .line 478
    :cond_3
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetsmCallStateMachine(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    move-result-object v2

    .line 479
    invoke-virtual {v0}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v3

    const/4 v4, -0x1

    invoke-virtual {v0}, Lcom/sec/ims/util/SipError;->getReason()Ljava/lang/String;

    move-result-object v5

    .line 478
    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/sec/internal/helper/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 481
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmSession(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v1

    invoke-static {v1}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcSecondaryType(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "MDMN_PULL_BY_SECONDARY"

    .line 482
    invoke-virtual {v0}, Lcom/sec/ims/util/SipError;->getReason()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 483
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmCallProfile(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->mEvent:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getCmcDeviceId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/ims/volte2/data/CallProfile;->setCmcDeviceId(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private handleError()V
    .locals 6

    .line 531
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmSession(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getIdcData()Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmSession(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getIdcData()Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;->getCurrentState()Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;->MODIFYING:Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;

    if-ne v0, v1, :cond_0

    .line 533
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetLOG_IDC_FW_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Transaction Handling"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetsmCallStateMachine(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->mEvent:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getIdcExtra()Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;

    move-result-object p0

    const/16 v1, 0x9b

    invoke-virtual {v0, v1, p0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void

    .line 538
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->mEvent:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getErrorCode()Lcom/sec/ims/util/SipError;

    move-result-object v0

    .line 539
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->mEvent:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getRetryAfter()I

    move-result v1

    .line 542
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->mEvent:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getAlternativeService()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;->INITIAL_REGISTRATION:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;

    if-ne v2, v3, :cond_1

    .line 544
    sget-object v2, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;->EVENT_CALL_ALT_SERVICE_INITIAL_REGI:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    goto :goto_0

    .line 545
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->mEvent:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getAlternativeService()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;->EMERGENCY_REGISTRATION:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;

    if-ne v2, v3, :cond_2

    .line 547
    sget-object v2, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;->EVENT_CALL_ALT_SERVICE_EMERGENCY_REGI:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    goto :goto_0

    .line 549
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->mEvent:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getAlternativeService()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;->EMERGENCY:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;

    if-ne v2, v3, :cond_3

    .line 551
    sget-object v2, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;->EVENT_CALL_ALT_SERVICE_EMERGENCY:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    .line 554
    :goto_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmSession(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getVideoCrbtSupportType()I

    move-result v3

    and-int/lit8 v4, v3, 0x1

    const/4 v5, 0x1

    if-eq v4, v5, :cond_4

    const/4 v4, 0x2

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_5

    .line 557
    :cond_4
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmCallProfile(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/ims/volte2/data/CallProfile;->setVideoCRBT(Z)V

    .line 558
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmCallProfile(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/sec/ims/volte2/data/CallProfile;->setDtmfEvent(Ljava/lang/String;)V

    .line 559
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isVideoCRBT : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmCallProfile(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/volte2/data/CallProfile;->isVideoCRBT()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    :cond_5
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmRegistration(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/ims/ImsRegistration;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 563
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmRegistrationManager(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmRegistration(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/ims/ImsRegistration;

    move-result-object v4

    .line 564
    invoke-virtual {v4}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationGovernor(I)Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v3

    if-eqz v3, :cond_7

    if-eqz v2, :cond_6

    .line 567
    invoke-direct {p0, v0, v2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->handleErrorOnCallEvent(Lcom/sec/ims/util/SipError;Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;)Lcom/sec/ims/util/SipError;

    move-result-object v0

    goto :goto_1

    .line 569
    :cond_6
    invoke-direct {p0, v0, v3, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->handleErrorOnNullEvent(Lcom/sec/ims/util/SipError;Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;I)Lcom/sec/ims/util/SipError;

    move-result-object v0

    .line 573
    :cond_7
    :goto_1
    invoke-direct {p0, v0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->handleErrorOnNullRegistration(Lcom/sec/ims/util/SipError;Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;)V

    .line 574
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmSession(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcPrimaryType(I)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->mEvent:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getCmcDeviceId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->mEvent:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getCmcDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 575
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmCallProfile(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->mEvent:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getCmcDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/ims/volte2/data/CallProfile;->setCmcDeviceId(Ljava/lang/String;)V

    .line 577
    :cond_8
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetsmCallStateMachine(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    move-result-object p0

    const/4 v2, 0x4

    const/4 v3, -0x1

    invoke-virtual {p0, v2, v1, v3, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method private handleErrorOnCallEvent(Lcom/sec/ims/util/SipError;Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;)Lcom/sec/ims/util/SipError;
    .locals 5

    .line 588
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmMno(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_5

    .line 590
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmCallProfile(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    invoke-interface {p3, p2, p1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onCallStatus(Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;Lcom/sec/ims/util/SipError;I)V

    .line 592
    sget-object p3, Lcom/sec/internal/constants/ims/SipErrorBase;->ALTERNATIVE_SERVICE:Lcom/sec/ims/util/SipError;

    invoke-virtual {p3, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 595
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->mEvent:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getAlternativeServiceType()Ljava/lang/String;

    move-result-object p1

    .line 596
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->mEvent:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getAlternativeServiceReason()Ljava/lang/String;

    move-result-object v0

    .line 597
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->mEvent:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getAlternativeServiceUrn()Ljava/lang/String;

    move-result-object v1

    .line 598
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleErrorOnCallEvent: type : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", reason : "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", serviceUrn : "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleErrorOnCallEvent: phoenId : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmSession(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v2

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", callEvent : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getPdnController()Lcom/sec/internal/interfaces/ims/core/IPdnController;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmSession(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p0

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-interface {p1, p0}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->getEmcBsIndication(I)Lcom/sec/internal/constants/ims/os/EmcBsIndication;

    move-result-object p0

    sget-object p1, Lcom/sec/internal/constants/ims/os/EmcBsIndication;->SUPPORTED:Lcom/sec/internal/constants/ims/os/EmcBsIndication;

    if-ne p0, p1, :cond_2

    sget-object p0, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;->EVENT_CALL_ALT_SERVICE_EMERGENCY_REGI:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    if-ne p2, p0, :cond_2

    .line 602
    sget-object p3, Lcom/sec/internal/constants/ims/SipErrorBase;->ALTERNATIVE_SERVICE_EMERGENCY:Lcom/sec/ims/util/SipError;

    .line 604
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string/jumbo p0, "urn:service:sos"

    .line 605
    invoke-virtual {p3, p0}, Lcom/sec/ims/util/SipError;->setReason(Ljava/lang/String;)V

    goto :goto_0

    .line 607
    :cond_1
    invoke-virtual {p3, v1}, Lcom/sec/ims/util/SipError;->setReason(Ljava/lang/String;)V

    goto :goto_0

    .line 610
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, ""

    .line 612
    invoke-virtual {p3, p0}, Lcom/sec/ims/util/SipError;->setReason(Ljava/lang/String;)V

    goto :goto_0

    .line 613
    :cond_3
    invoke-static {v1}, Lcom/sec/internal/helper/ImsCallUtil;->convertUrnToEccCat(Ljava/lang/String;)I

    move-result p0

    const/16 p1, 0xfe

    if-ne p0, p1, :cond_4

    .line 615
    invoke-virtual {p3, v1}, Lcom/sec/ims/util/SipError;->setReason(Ljava/lang/String;)V

    goto :goto_0

    .line 617
    :cond_4
    sget-object p3, Lcom/sec/internal/constants/ims/SipErrorBase;->ALTERNATIVE_SERVICE_EMERGENCY_CSFB:Lcom/sec/ims/util/SipError;

    .line 618
    invoke-virtual {p3, v1}, Lcom/sec/ims/util/SipError;->setReason(Ljava/lang/String;)V

    goto :goto_0

    .line 623
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmCallProfile(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    invoke-interface {p3, p2, p1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onCallStatus(Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;Lcom/sec/ims/util/SipError;I)V

    .line 624
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->mEvent:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmMno(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/constants/Mno;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/internal/helper/ImsCallUtil;->onConvertSipErrorReason(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;Lcom/sec/internal/constants/Mno;)Lcom/sec/ims/util/SipError;

    move-result-object p3

    :goto_0
    return-object p3
.end method

.method private handleErrorOnNullEvent(Lcom/sec/ims/util/SipError;Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;I)Lcom/sec/ims/util/SipError;
    .locals 3

    .line 636
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmMno(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    const-string v2, "mmtel"

    if-ne v0, v1, :cond_0

    .line 637
    invoke-interface {p2, v2, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onSipError(Ljava/lang/String;Lcom/sec/ims/util/SipError;)Lcom/sec/ims/util/SipError;

    move-result-object p1

    goto/16 :goto_0

    .line 639
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetsmCallStateMachine(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mReinvite:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetsmCallStateMachine(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mConfCallAdded:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmMno(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_2

    .line 643
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "Don\'t send Register for reINVITE\'s transaction timeout"

    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 645
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmMno(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/Mno;->USCC:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmSession(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->AlertingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmSession(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    .line 646
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->EndingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v0, v1, :cond_4

    :cond_3
    invoke-virtual {p1}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v0

    const/16 v1, 0x198

    if-ne v0, v1, :cond_4

    .line 647
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "USCC - Don\'t re-REGISTER for 408 if it is received after 180"

    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 648
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmMno(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmSession(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ModifyingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v0, v1, :cond_5

    .line 649
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "Don\'t deregister for Re-Invite failures"

    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 650
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmMno(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isTmobile()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v0

    const/16 v1, 0x1f7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmRegistration(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmRegistration(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    if-eqz v0, :cond_6

    if-lez p3, :cond_6

    mul-int/lit16 p3, p3, 0x3e8

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmRegistration(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    .line 651
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getTimerB()I

    move-result v0

    if-ge p3, v0, :cond_6

    .line 652
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "TMobile EUR - 503 error, retryAfter is smaller then TimerB, UE continues using current P-CSCF address"

    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 654
    :cond_6
    invoke-interface {p2, v2, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onSipError(Ljava/lang/String;Lcom/sec/ims/util/SipError;)Lcom/sec/ims/util/SipError;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private handleErrorOnNullRegistration(Lcom/sec/ims/util/SipError;Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;)V
    .locals 4

    .line 668
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->mEvent:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getRetryAfter()I

    move-result v0

    .line 670
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmMno(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 675
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmMno(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_1

    if-lez v0, :cond_1

    .line 676
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KDDI : INVITE retry should happen after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " seconds"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetsmCallStateMachine(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->setRetryInprogress(Z)V

    :cond_1
    if-eqz p2, :cond_2

    .line 680
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->getGcfMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 681
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->handleErrorSetCodeReason(Lcom/sec/ims/util/SipError;Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private handleErrorSetCodeReason(Lcom/sec/ims/util/SipError;Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;)V
    .locals 4

    .line 693
    sget-object v0, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;->EVENT_CALL_ALT_SERVICE_EMERGENCY_REGI:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    const-string v1, " "

    const-string v2, "convert error "

    const/16 v3, 0x17d

    if-ne p2, v0, :cond_5

    .line 694
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmMno(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/constants/Mno;

    move-result-object p2

    sget-object v0, Lcom/sec/internal/constants/Mno;->STARHUB:Lcom/sec/internal/constants/Mno;

    if-eq p2, v0, :cond_2

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmMno(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/constants/Mno;

    move-result-object p2

    sget-object v0, Lcom/sec/internal/constants/Mno;->CU:Lcom/sec/internal/constants/Mno;

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 697
    :cond_0
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmMno(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/constants/Mno;

    move-result-object p2

    sget-object v0, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->mEvent:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getAlternativeServiceReason()Ljava/lang/String;

    move-result-object p2

    const-string v0, "VoIP emergency not available!"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/16 p2, 0x17e

    .line 699
    invoke-virtual {p1, p2}, Lcom/sec/ims/util/SipError;->setCode(I)V

    goto :goto_1

    .line 702
    :cond_1
    invoke-virtual {p1, v3}, Lcom/sec/ims/util/SipError;->setCode(I)V

    goto :goto_1

    :cond_2
    :goto_0
    const/16 p2, 0x17c

    .line 696
    invoke-virtual {p1, p2}, Lcom/sec/ims/util/SipError;->setCode(I)V

    .line 704
    :goto_1
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmMno(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/constants/Mno;

    move-result-object p2

    sget-object v0, Lcom/sec/internal/constants/Mno;->DOCOMO:Lcom/sec/internal/constants/Mno;

    if-eq p2, v0, :cond_4

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmMno(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/constants/Mno;

    move-result-object p2

    sget-object v0, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-eq p2, v0, :cond_4

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmMno(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/constants/Mno;

    move-result-object p2

    .line 705
    invoke-virtual {p2}, Lcom/sec/internal/constants/Mno;->isEur()Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmMno(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/constants/Mno;

    move-result-object p2

    sget-object v0, Lcom/sec/internal/constants/Mno;->MOBILEONE:Lcom/sec/internal/constants/Mno;

    if-ne p2, v0, :cond_3

    goto :goto_2

    :cond_3
    const-string p2, ""

    .line 709
    invoke-virtual {p1, p2}, Lcom/sec/ims/util/SipError;->setReason(Ljava/lang/String;)V

    goto :goto_3

    .line 706
    :cond_4
    :goto_2
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "need to carry service urn info for e911"

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->mEvent:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getAlternativeServiceUrn()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sec/ims/util/SipError;->setReason(Ljava/lang/String;)V

    .line 711
    :goto_3
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/util/SipError;->getReason()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 712
    :cond_5
    sget-object v0, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;->EVENT_CALL_ALT_SERVICE_EMERGENCY:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    if-ne p2, v0, :cond_7

    .line 713
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmRegistration(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/ims/ImsRegistration;

    move-result-object p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmRegistration(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/ims/ImsRegistration;

    move-result-object p2

    .line 714
    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/ims/settings/ImsProfile;->getEcallCsfbWithoutActionTag()Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->mEvent:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    .line 715
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getAlternativeServiceUrn()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6

    const/4 p2, 0x1

    goto :goto_4

    :cond_6
    const/4 p2, 0x0

    :goto_4
    if-eqz p2, :cond_7

    .line 717
    invoke-virtual {p1, v3}, Lcom/sec/ims/util/SipError;->setCode(I)V

    .line 718
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->mEvent:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getAlternativeServiceUrn()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sec/ims/util/SipError;->setReason(Ljava/lang/String;)V

    .line 719
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/util/SipError;->getReason()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_5
    return-void
.end method

.method private handleEstablished()V
    .locals 6

    .line 289
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmCallProfile(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/MediaProfile;->getAudioCodec()Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->toString()Ljava/lang/String;

    move-result-object v0

    .line 290
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->mEvent:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getParams()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getAudioRxTrackId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmCallProfile(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getAudioRxTrackId()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    .line 292
    :goto_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmSession(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v2

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->mEvent:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getParams()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->updateCallProfile(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;)V

    .line 293
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmRegistration(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmRegistration(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmRegistration(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    .line 294
    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getNotifyCodecOnEstablished()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmCallProfile(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    .line 295
    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/MediaProfile;->getAudioCodec()Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmSession(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    .line 296
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v0

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v0, v2, :cond_1

    .line 297
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "forceNotifyCurrentCodec, Codec ="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->mEvent:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getParams()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getAudioCodec()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", HdIcon: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmCallProfile(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v5

    .line 298
    invoke-virtual {v5}, Lcom/sec/ims/volte2/data/CallProfile;->getHDIcon()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 297
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmSession(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->forceNotifyCurrentCodec()V

    :cond_1
    if-eqz v1, :cond_2

    .line 301
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmSession(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v0, v1, :cond_2

    .line 302
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmSession(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->forceNotifyCurrentCodec()V

    .line 303
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "notified audiorxtrackid"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmCallProfile(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->mEvent:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    .line 306
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getCallType()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 307
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmCallProfile(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sec/ims/volte2/data/CallProfile;->setDowngradedVideoCall(Z)V

    .line 308
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmCallProfile(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sec/ims/volte2/data/CallProfile;->setDowngradedAtEstablish(Z)V

    .line 309
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmSession(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setUserCameraOff(Z)V

    .line 311
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmRegistration(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmRegistration(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 312
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmRegistration(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getNotifyCallDowngraded()I

    move-result v0

    goto :goto_1

    :cond_3
    move v0, v3

    .line 314
    :goto_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmMno(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v1

    if-nez v1, :cond_5

    if-eq v0, v4, :cond_5

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmMno(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    sget-object v5, Lcom/sec/internal/constants/Mno;->DISH:Lcom/sec/internal/constants/Mno;

    filled-new-array {v2, v5}, [Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 315
    invoke-virtual {v1, v2}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->mEvent:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getRemoteVideoCapa()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmCallProfile(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    .line 316
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->isMOCall()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 317
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmSession(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->notifyCallDowngraded()V

    .line 320
    :cond_6
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmRegistration(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmRegistration(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->isSoftphoneEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmCallProfile(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    .line 321
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_7

    .line 324
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ATT Softphone : not change FROM  callType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmCallProfile(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    .line 325
    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "TO  calltype ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->mEvent:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getCallType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 324
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 327
    :cond_7
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmCallProfile(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->mEvent:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getCallType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    .line 328
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->mEvent:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getCallType()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isRttCall(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 329
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmCallProfile(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sec/ims/volte2/data/MediaProfile;->setRttMode(I)V

    goto :goto_2

    .line 331
    :cond_8
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmCallProfile(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/ims/volte2/data/MediaProfile;->setRttMode(I)V

    .line 334
    :goto_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmSession(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcPrimaryType(I)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->mEvent:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getCmcDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 335
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmCallProfile(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->mEvent:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getCmcDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setCmcDeviceId(Ljava/lang/String;)V

    .line 337
    :cond_9
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmSession(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcSecondaryType(I)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->mEvent:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getCmcCallTime()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 338
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmCallProfile(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->mEvent:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getCmcCallTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setCmcCallTime(Ljava/lang/String;)V

    .line 340
    :cond_a
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmCallProfile(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->mEvent:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getRemoteVideoCapa()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setRemoteVideoCapa(Z)V

    .line 341
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetsmCallStateMachine(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->mEvent:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getParams()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getLocalVideoRTPPort()I

    move-result v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->mEvent:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    .line 342
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getParams()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getLocalVideoRTCPPort()I

    move-result v2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->mEvent:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    .line 343
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getParams()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getRemoteVideoRTPPort()I

    move-result v3

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->mEvent:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    .line 344
    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getParams()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getRemoteVideoRTCPPort()I

    move-result v4

    .line 341
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->setVideoRtpPort(IIII)V

    .line 345
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetsmCallStateMachine(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->mEvent:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getParams()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-result-object p0

    .line 346
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getIndicationFlag()I

    move-result p0

    const/16 v1, 0x29

    .line 345
    invoke-virtual {v0, v1, p0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(II)V

    return-void
.end method

.method private handleExtendToConference()V
    .locals 3

    .line 725
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->mEvent:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getErrorCode()Lcom/sec/ims/util/SipError;

    move-result-object v0

    .line 727
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmMno(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 728
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmCallProfile(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->mEvent:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getRemoteVideoCapa()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/ims/volte2/data/CallProfile;->setRemoteVideoCapa(Z)V

    .line 730
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetsmCallStateMachine(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    move-result-object v1

    .line 731
    invoke-virtual {v0}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->mEvent:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    .line 732
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getCallType()I

    move-result p0

    const/16 v2, 0x4a

    .line 730
    invoke-virtual {v1, v2, v0, p0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(III)V

    return-void
.end method

.method private handleHeldBoth()V
    .locals 2

    .line 445
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmMno(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmMno(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isHkMo()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmMno(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmMno(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isJpn()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmMno(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmMno(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/Mno;->TELSTRA:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_1

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmCallProfile(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->mEvent:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getRemoteVideoCapa()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setRemoteVideoCapa(Z)V

    .line 449
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmSession(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmSession(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v1

    iget-boolean v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mLocalHoldTone:Z

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mOldLocalHoldTone:Z

    .line 450
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmSession(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->mEvent:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getParams()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getLocalHoldTone()Z

    move-result v1

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mLocalHoldTone:Z

    .line 451
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetsmCallStateMachine(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    move-result-object p0

    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method private handleHeldLocal()V
    .locals 3

    .line 408
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmCallProfile(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/MediaProfile;->getAudioCodec()Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->toString()Ljava/lang/String;

    move-result-object v0

    .line 410
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmSession(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->mEvent:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getParams()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->updateCallProfile(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;)V

    .line 411
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmMno(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmMno(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isHkMo()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmMno(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmMno(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isJpn()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmMno(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmMno(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/Mno;->TELSTRA:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_1

    .line 413
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmCallProfile(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->mEvent:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getRemoteVideoCapa()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/ims/volte2/data/CallProfile;->setRemoteVideoCapa(Z)V

    .line 415
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmMno(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/Mno;->DOCOMO:Lcom/sec/internal/constants/Mno;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmMno(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/Mno;->TWM:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmCallProfile(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    .line 416
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/MediaProfile;->getAudioCodec()Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 417
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forceNotifyCurrentCodec, Codec ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->mEvent:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    .line 418
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getParams()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getAudioCodec()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", HdIcon: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmCallProfile(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getHDIcon()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 417
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmSession(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->forceNotifyCurrentCodec()V

    .line 421
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetsmCallStateMachine(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    move-result-object p0

    const/16 v0, 0x3d

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method private handleHeldRemote()V
    .locals 3

    .line 425
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmMno(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmMno(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isHkMo()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmMno(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmMno(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isJpn()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmMno(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmMno(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmMno(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/Mno;->TELSTRA:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_1

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmCallProfile(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->mEvent:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getRemoteVideoCapa()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setRemoteVideoCapa(Z)V

    .line 429
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmMno(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/Mno;->MOVISTAR_PERU:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmMno(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/Mno;->TWM:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_3

    .line 430
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmCallProfile(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/MediaProfile;->getAudioCodec()Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->toString()Ljava/lang/String;

    move-result-object v0

    .line 431
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmSession(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->mEvent:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getParams()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->updateCallProfile(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;)V

    .line 432
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmCallProfile(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/MediaProfile;->getAudioCodec()Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 433
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forceNotifyCurrentCodec, Codec ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->mEvent:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    .line 434
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getParams()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getAudioCodec()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", HdIcon: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmCallProfile(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    .line 435
    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getHDIcon()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 433
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmSession(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->forceNotifyCurrentCodec()V

    .line 439
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmSession(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmSession(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v1

    iget-boolean v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mLocalHoldTone:Z

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mOldLocalHoldTone:Z

    .line 440
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmSession(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->mEvent:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getParams()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getLocalHoldTone()Z

    move-result v1

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mLocalHoldTone:Z

    .line 441
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetsmCallStateMachine(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    move-result-object p0

    const/16 v0, 0x3e

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method private handleModified()V
    .locals 6

    .line 363
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmSession(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getIdcData()Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 364
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmSession(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getIdcData()Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;->getCurrentState()Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;->MODIFYING:Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmSession(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    .line 365
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getIdcData()Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;->getCurrentState()Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;->MODIFY_REQUESTED:Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData$State;

    if-ne v0, v1, :cond_1

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetLOG_IDC_FW_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Transaction Handling"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetsmCallStateMachine(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->mEvent:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getIdcExtra()Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;

    move-result-object p0

    const/16 v1, 0x99

    invoke-virtual {v0, v1, p0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void

    .line 371
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmSession(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->mEvent:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getParams()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->updateCallProfile(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;)V

    .line 372
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmSession(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mModifyRequestedProfile:Lcom/sec/ims/volte2/data/CallProfile;

    if-eqz v0, :cond_3

    .line 373
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->mEvent:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getErrorCode()Lcom/sec/ims/util/SipError;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->mEvent:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    .line 374
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getErrorCode()Lcom/sec/ims/util/SipError;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/SipErrorBase;->OK:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, v1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 376
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Change calltype from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->mEvent:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getCallType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmSession(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mModifyRequestedProfile:Lcom/sec/ims/volte2/data/CallProfile;

    .line 377
    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 376
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->mEvent:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmSession(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mModifyRequestedProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->setCallType(I)V

    goto :goto_0

    .line 381
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "unexpected ImsCallEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmCallProfile(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->mEvent:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getRemoteVideoCapa()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setRemoteVideoCapa(Z)V

    .line 384
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmCallProfile(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->mEvent:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    .line 385
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getCallType()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 386
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Call is downgrade"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmSession(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->stopCamera()V

    .line 389
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmCallProfile(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/ims/volte2/data/CallProfile;->setDowngradedVideoCall(Z)V

    .line 390
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmSession(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setUserCameraOff(Z)V

    goto :goto_1

    .line 391
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmCallProfile(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->mEvent:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    .line 392
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getCallType()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 393
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Call is upgrade"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmCallProfile(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setDowngradedVideoCall(Z)V

    .line 396
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmCallProfile(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setDowngradedAtEstablish(Z)V

    .line 397
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmCallProfile(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    .line 398
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmCallProfile(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->mEvent:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getCallType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    .line 399
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetsmCallStateMachine(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->mEvent:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getParams()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getLocalVideoRTPPort()I

    move-result v2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->mEvent:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    .line 400
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getParams()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getLocalVideoRTCPPort()I

    move-result v3

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->mEvent:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    .line 401
    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getParams()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getRemoteVideoRTPPort()I

    move-result v4

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->mEvent:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    .line 402
    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getParams()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getRemoteVideoRTCPPort()I

    move-result v5

    .line 399
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->setVideoRtpPort(IIII)V

    .line 403
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetsmCallStateMachine(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->mEvent:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getCallType()I

    move-result p0

    const/16 v2, 0x5b

    invoke-virtual {v1, v2, p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(III)V

    return-void
.end method

.method private handleModifyRequested()V
    .locals 8

    .line 489
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->mEvent:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getCallType()I

    move-result v3

    .line 490
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->mEvent:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getIsSdToSdPull()Z

    move-result v0

    .line 492
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->mEvent:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getIdcExtra()Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 493
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetLOG_IDC_FW_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Transaction Handling"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetsmCallStateMachine(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->mEvent:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getIdcExtra()Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;

    move-result-object p0

    const/16 v1, 0x9a

    invoke-virtual {v0, v1, p0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void

    .line 498
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmCallProfile(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->hasRemoteVideoCapa()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmModule(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmSession(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v2

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    const-string v4, "mmtel-video"

    .line 499
    invoke-interface {v1, v2, v4}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isCallServiceAvailable(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 500
    invoke-static {v3}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 501
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmCallProfile(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setRemoteVideoCapa(Z)V

    .line 502
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmSession(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->forceNotifyCurrentCodec()V

    .line 503
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetsmCallStateMachine(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    move-result-object v1

    const/16 v2, 0x37

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x64

    invoke-virtual/range {v1 .. v7}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(IIILjava/lang/Object;J)V

    goto :goto_0

    .line 506
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmSession(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v1

    invoke-static {v1}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcPrimaryType(I)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 507
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->modifyCallTypeForPull()V

    goto :goto_0

    .line 509
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetsmCallStateMachine(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x37

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private handleRefreshFail()V
    .locals 4

    .line 350
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->mEvent:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getErrorCode()Lcom/sec/ims/util/SipError;

    move-result-object v0

    .line 352
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REFRESHFAIL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/ims/util/SipError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmRegistration(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 354
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmRegistrationManager(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmRegistration(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    .line 355
    invoke-virtual {p0}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result p0

    invoke-interface {v1, p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationGovernor(I)Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v1, "mmtel"

    .line 357
    invoke-interface {p0, v1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onSipError(Ljava/lang/String;Lcom/sec/ims/util/SipError;)Lcom/sec/ims/util/SipError;

    :cond_0
    return-void
.end method

.method private handleRingingBack()V
    .locals 3

    .line 265
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmSession(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->mEvent:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getParams()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->updateCallProfile(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;)V

    .line 266
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmSession(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getVideoCrbtSupportType()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 267
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->mEvent:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getParams()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getVideoCrbtType()I

    move-result v0

    if-nez v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmCallProfile(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setVideoCRBT(Z)V

    .line 269
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmCallProfile(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setDtmfEvent(Ljava/lang/String;)V

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isVideoCRBT : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmCallProfile(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->isVideoCRBT()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetsmCallStateMachine(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    move-result-object p0

    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method private modifyCallTypeForPull()V
    .locals 7

    .line 736
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "modifyCallType for SD to SD pull"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmCallProfile(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v5

    .line 739
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmCallProfile(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcBoundSessionId()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 741
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmModule(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 743
    :goto_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetsmCallStateMachine(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->calculateCmcCallTime(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 744
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmVolteSvcIntf(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler$ImsCallEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;->-$$Nest$fgetmSession(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionEventHandler;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v2

    move v3, v5

    move v4, v5

    invoke-interface/range {v1 .. v6}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->replyModifyCallType(IIIILjava/lang/String;)I

    return-void
.end method
