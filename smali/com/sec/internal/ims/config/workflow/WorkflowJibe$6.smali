.class Lcom/sec/internal/ims/config/workflow/WorkflowJibe$6;
.super Lcom/sec/internal/ims/config/workflow/WorkflowBase$Authorize;
.source "WorkflowJibe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowJibe;)V
    .locals 0

    .line 747
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$6;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Authorize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowBase;)V

    return-void
.end method


# virtual methods
.method protected getOtp()Ljava/lang/String;
    .locals 5

    .line 763
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$6;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/ims/util/ConfigUtil;->getSmsType(I)Ljava/lang/String;

    move-result-object v0

    .line 764
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$6;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "otpSmsType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " mAuthTryCount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$6;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget v4, v4, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mAuthTryCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mAuthHiddenTryCount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$6;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget v4, v4, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mAuthHiddenTryCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 766
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$6;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",OST:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x13020302

    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    const-string/jumbo v1, "text"

    .line 768
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$6;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget v3, v1, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mAuthTryCount:I

    if-ge v3, v2, :cond_0

    add-int/2addr v3, v2

    .line 770
    iput v3, v1, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mAuthTryCount:I

    .line 771
    iget-object p0, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mTelephonyAdapter:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getOtp()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string v1, "binary"

    .line 772
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$6;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mAuthHiddenTryCount:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    add-int/2addr v0, v2

    .line 774
    iput v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mAuthHiddenTryCount:I

    .line 775
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mTelephonyAdapter:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getPortOtp()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 750
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$6;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v2, "Authorize:"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 752
    invoke-super {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Authorize;->run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v0

    .line 753
    instance-of v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Finish;

    if-eqz v1, :cond_0

    .line 754
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$6;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object p0

    const/16 v1, 0x2bc

    invoke-virtual {p0, v1}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->setStatusCode(I)V

    :cond_0
    return-object v0
.end method
