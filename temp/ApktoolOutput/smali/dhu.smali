.class public final Ldhu;
.super Ljava/lang/Object;
.source "DownloadListFragment.java"

# interfaces
.implements Lhmx;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 88
    const v0, 0x7f0c0078

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0e0285

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 90
    const v0, 0x7f0c0002

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Ldhv;

    invoke-direct {v1}, Ldhv;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    return-void
.end method