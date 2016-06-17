.class final enum Lcom/wandoujia/p4/tips/TipsType$13;
.super Lcom/wandoujia/p4/tips/TipsType;
.source "TipsType.java"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 288
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/wandoujia/p4/tips/TipsType;-><init>(Ljava/lang/String;ILcom/wandoujia/p4/tips/TipsType$1;)V

    return-void
.end method


# virtual methods
.method protected final createTips(Landroid/content/Context;)Lgct;
    .locals 3
    .parameter

    .prologue
    .line 291
    const v0, 0x7f0301d5

    invoke-static {p1, v0}, Lg;->a(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v1

    .line 292
    const v0, 0x7f0c0077

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 293
    const v2, 0x7f0e01fb

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 294
    new-instance v0, Lgct;

    invoke-direct {v0, v1}, Lgct;-><init>(Landroid/view/View;)V

    return-object v0
.end method
