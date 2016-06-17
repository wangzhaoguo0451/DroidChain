.class final enum Lcom/wandoujia/p4/tips/TipsType$7;
.super Lcom/wandoujia/p4/tips/TipsType;
.source "TipsType.java"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 127
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/wandoujia/p4/tips/TipsType;-><init>(Ljava/lang/String;ILcom/wandoujia/p4/tips/TipsType$1;)V

    return-void
.end method


# virtual methods
.method protected final createTips(Landroid/content/Context;)Lgct;
    .locals 3
    .parameter

    .prologue
    .line 131
    new-instance v0, Lgct;

    const v1, 0x7f0301e5

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lgct;-><init>(Landroid/content/Context;IZ)V

    return-object v0
.end method
