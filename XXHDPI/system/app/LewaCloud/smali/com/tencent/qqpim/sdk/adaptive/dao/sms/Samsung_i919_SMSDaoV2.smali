.class public Lcom/tencent/qqpim/sdk/adaptive/dao/sms/Samsung_i919_SMSDaoV2;
.super Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDaoV2;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDaoV2;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected getQueryNumberSelect()Ljava/lang/String;
    .locals 1

    const-string v0, "type not in (6,5,4,3) AND (address<>\'krobot_001\' AND address<>\'WAPPush\' AND address<>\'go.10086.cn\')"

    return-object v0
.end method
