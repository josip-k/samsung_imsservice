.class final enum Lcom/sec/internal/ims/rcs/util/DualRcsPolicyType$2;
.super Lcom/sec/internal/ims/rcs/util/DualRcsPolicyType;
.source "DualRcsPolicyType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/rcs/util/DualRcsPolicyType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sec/internal/ims/rcs/util/DualRcsPolicyType;-><init>(Ljava/lang/String;IILcom/sec/internal/ims/rcs/util/DualRcsPolicyType-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILcom/sec/internal/ims/rcs/util/DualRcsPolicyType$2-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/rcs/util/DualRcsPolicyType$2;-><init>(Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method isDualRcsPolicyConditionMatch(I)Z
    .locals 4

    const/4 p0, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, p0

    goto :goto_0

    :cond_0
    move v1, v0

    .line 30
    :goto_0
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->getMatchedSalesCode(Ljava/lang/String;Lcom/sec/internal/constants/Mno;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 31
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    invoke-static {v1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v1

    if-ne p1, v1, :cond_1

    goto :goto_1

    :cond_1
    move p0, v0

    :cond_2
    :goto_1
    return p0
.end method
