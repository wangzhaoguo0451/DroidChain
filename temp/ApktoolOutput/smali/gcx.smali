.class public final Lgcx;
.super Ljava/lang/Object;
.source "TipsType.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 94
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lhoq;

    invoke-direct {v1, v0}, Lhoq;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0e0360

    invoke-virtual {v1, v0}, Lhoq;->a(I)Lhoq;

    move-result-object v0

    const v1, 0x7f0e035f

    invoke-virtual {v0, v1}, Lhoq;->b(I)Lhoq;

    move-result-object v0

    const v1, 0x7f0e035e

    new-instance v2, Lgdu;

    invoke-direct {v2}, Lgdu;-><init>()V

    invoke-virtual {v0, v1, v2}, Lhoq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lhoq;

    move-result-object v0

    const v1, 0x7f0e0162

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lhoq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lhoq;

    move-result-object v0

    invoke-virtual {v0}, Lhoq;->a()Lhoj;

    move-result-object v0

    invoke-virtual {v0}, Lhoj;->show()V

    .line 95
    return-void
.end method
