.class public Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceChn$AbsentState;
.super Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase$AbsentState;
.source "TelephonyAdapterPrimaryDeviceChn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceChn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AbsentState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceChn;


# direct methods
.method protected constructor <init>(Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceChn;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceChn$AbsentState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceChn;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase$AbsentState;-><init>(Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;)V

    return-void
.end method


# virtual methods
.method public getDeviceId(I)Ljava/lang/String;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getIdentityByPhoneId(I)Ljava/lang/String;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getOtp()Ljava/lang/String;
    .locals 6

    .line 96
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 97
    iget-object v2, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceChn$AbsentState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceChn;

    iget-object v3, v2, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mOtp:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-wide v2, v2, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mOtpReceivedTime:J

    const-wide/16 v4, 0xbb8

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 98
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceChn;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceChn$AbsentState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceChn;

    iget v1, v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    const-string v2, "OTP exist. send immediately"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    .line 100
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceChn;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceChn$AbsentState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceChn;

    iget v1, v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    const-string v2, "OTP don\'t exist. wait OTP"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceChn$AbsentState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceChn;

    iget-object v0, v0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 104
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 106
    :goto_0
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceChn;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceChn$AbsentState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceChn;

    iget v1, v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "receive OTP:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceChn$AbsentState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceChn;

    iget-object v3, v3, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mOtp:Ljava/lang/String;

    invoke-static {v3}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 108
    :goto_1
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceChn$AbsentState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceChn;

    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mOtp:Ljava/lang/String;

    return-object p0
.end method
