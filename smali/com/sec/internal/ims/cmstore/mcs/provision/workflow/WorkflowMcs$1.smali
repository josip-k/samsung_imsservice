.class Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$1;
.super Landroid/content/BroadcastReceiver;
.source "WorkflowMcs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;-><init>(Landroid/os/Looper;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Landroid/os/Handler;Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 174
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.sec.imsservice.cmstore.mcs.action.ACCESS_TOKEN_VALIDITY_TIMEOUT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const v0, -0x6ffcfffc

    const-string/jumbo v1, "phone"

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 175
    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 176
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    iget v1, p2, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPhoneId:I

    if-ne v1, p1, :cond_4

    .line 177
    iget-object p1, p2, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->LOG_TAG:Ljava/lang/String;

    const-string p2, "onReceive: access token is expired"

    invoke-static {p1, v1, p2}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->infoLogAndAdd(Ljava/lang/String;ILjava/lang/String;)V

    .line 178
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    iget p2, p2, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPhoneId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",PV:ATKN"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 179
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    iput-object v2, p1, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mAccessTokenValidityIntent:Landroid/app/PendingIntent;

    .line 180
    invoke-virtual {p1}, Lcom/sec/internal/helper/StateMachine;->getCurrentState()Lcom/sec/internal/helper/IState;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    invoke-static {p2}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->-$$Nest$fgetmProvisioningState(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;)Lcom/sec/internal/helper/State;

    move-result-object p2

    if-eq p1, p2, :cond_4

    .line 181
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    const/16 p1, 0xe

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    goto/16 :goto_0

    :cond_0
    const-string p1, "com.sec.imsservice.cmstore.mcs.action.REFRESH_TOKEN_VALIDITY_TIMEOUT"

    .line 184
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 185
    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 186
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    iget v1, p2, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPhoneId:I

    if-ne v1, p1, :cond_4

    .line 187
    iget-object p1, p2, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->LOG_TAG:Ljava/lang/String;

    const-string p2, "onReceive: refresh token is expired"

    invoke-static {p1, v1, p2}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->infoLogAndAdd(Ljava/lang/String;ILjava/lang/String;)V

    .line 188
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    iget p2, p2, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPhoneId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",PV:RTKN"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 189
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    iput-object v2, p1, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mRefreshTokenValidityIntent:Landroid/app/PendingIntent;

    .line 190
    invoke-virtual {p1}, Lcom/sec/internal/helper/StateMachine;->getCurrentState()Lcom/sec/internal/helper/IState;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    invoke-static {p2}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->-$$Nest$fgetmProvisioningState(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;)Lcom/sec/internal/helper/State;

    move-result-object p2

    if-eq p1, p2, :cond_4

    .line 191
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    const/16 p1, 0xc

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    goto/16 :goto_0

    :cond_1
    const-string p1, "com.sec.imsservice.cmstore.mcs.action.REGISTRATION_CODE_VALIDITY_TIMEOUT"

    .line 194
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, ""

    if-eqz p1, :cond_2

    .line 195
    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 196
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    iget v1, p2, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPhoneId:I

    if-ne v1, p1, :cond_4

    .line 197
    iget-object p1, p2, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->LOG_TAG:Ljava/lang/String;

    const-string p2, "onReceive: registration code is expired, remove it"

    invoke-static {p1, v1, p2}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->infoLogAndAdd(Ljava/lang/String;ILjava/lang/String;)V

    .line 198
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    iput-object v2, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mRegistrationCodeValidityIntent:Landroid/app/PendingIntent;

    .line 199
    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->-$$Nest$fgetmPreferenceManager(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;)Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveRegCode(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "com.sec.imsservice.cmstore.mcs.action.AUTH_CODE_VALIDITY_TIMEOUT"

    .line 201
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 202
    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 203
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    iget v1, p2, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPhoneId:I

    if-ne v1, p1, :cond_4

    .line 204
    iget-object p1, p2, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->LOG_TAG:Ljava/lang/String;

    const-string p2, "onReceive: auht code is expired, remove it"

    invoke-static {p1, v1, p2}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->infoLogAndAdd(Ljava/lang/String;ILjava/lang/String;)V

    .line 205
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    iput-object v2, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mAuthCodeValidityIntent:Landroid/app/PendingIntent;

    .line 206
    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->-$$Nest$fgetmPreferenceManager(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;)Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveAuthCode(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p1, "com.sec.imsservice.cmstore.mcs.action.OTP_RESPONSE_TIMEOUT"

    .line 208
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 209
    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 210
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    iget v0, p2, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPhoneId:I

    if-ne v0, p1, :cond_4

    .line 211
    iget-object p1, p2, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->LOG_TAG:Ljava/lang/String;

    const-string p2, "onReceive: Time out, do not receive ported OTP SMS"

    invoke-static {p1, v0, p2}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->infoLogAndAdd(Ljava/lang/String;ILjava/lang/String;)V

    .line 212
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    iput-object v2, p1, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mOtpTimeoutIntent:Landroid/app/PendingIntent;

    .line 213
    invoke-static {p1, v2}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->-$$Nest$fputmOtp(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;Ljava/lang/String;)V

    .line 214
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    invoke-static {p1, v3}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->-$$Nest$fputmWaitOtp(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;Z)V

    .line 215
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    const/16 p1, 0x14

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    :cond_4
    :goto_0
    return-void
.end method
