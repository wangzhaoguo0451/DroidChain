.class public final Ldmo;
.super Lhic;
.source "DownloadCancelPresenter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lhic;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;ZLandroid/content/DialogInterface$OnClickListener;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 70
    new-instance v1, Lhoq;

    invoke-direct {v1, p0}, Lhoq;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_0

    const v0, 0x7f0e0164

    :goto_0
    invoke-virtual {v1, v0}, Lhoq;->a(I)Lhoq;

    move-result-object v0

    const v1, 0x7f0e0176

    invoke-virtual {v0, v1, p2}, Lhoq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lhoq;

    move-result-object v0

    const v1, 0x7f0e0162

    new-instance v2, Ldmr;

    invoke-direct {v2}, Ldmr;-><init>()V

    invoke-virtual {v0, v1, v2}, Lhoq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lhoq;

    move-result-object v0

    invoke-virtual {v0}, Lhoq;->a()Lhoj;

    move-result-object v0

    invoke-virtual {v0}, Lhoj;->show()V

    .line 79
    return-void

    .line 70
    :cond_0
    const v0, 0x7f0e0163

    goto :goto_0
.end method


# virtual methods
.method protected final a(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 2
    .parameter

    .prologue
    .line 31
    invoke-virtual {p0}, Ldmo;->e()Landroid/view/View;

    move-result-object v0

    new-instance v1, Ldmp;

    invoke-direct {v1, p0, p1}, Ldmp;-><init>(Ldmo;Lcom/wandoujia/ripple_framework/model/Model;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    return-void
.end method
