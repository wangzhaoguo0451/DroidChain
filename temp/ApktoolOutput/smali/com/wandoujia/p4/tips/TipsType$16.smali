.class public final enum Lcom/wandoujia/p4/tips/TipsType$16;
.super Lcom/wandoujia/p4/tips/TipsType;
.source "TipsType.java"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 314
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/wandoujia/p4/tips/TipsType;-><init>(Ljava/lang/String;ILcom/wandoujia/p4/tips/TipsType$1;)V

    return-void
.end method


# virtual methods
.method protected final createTips(Landroid/content/Context;)Lgct;
    .locals 3
    .parameter

    .prologue
    .line 317
    const v0, 0x7f0301ca

    invoke-static {p1, v0}, Lg;->a(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    .line 318
    const v1, 0x7f0c0419

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lgcu;

    invoke-direct {v2}, Lgcu;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    new-instance v1, Lgct;

    invoke-direct {v1, v0}, Lgct;-><init>(Landroid/view/View;)V

    return-object v1
.end method
