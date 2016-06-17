.class public final Lduq;
.super Ljava/lang/Object;
.source "SubscribeTimeLineFragment.java"

# interfaces
.implements Lhmx;


# instance fields
.field private synthetic a:Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeTimeLineFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeTimeLineFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lduq;->a:Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeTimeLineFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const v3, 0x7f0c0002

    const/4 v2, 0x0

    .line 79
    iget-object v0, p0, Lduq;->a:Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeTimeLineFragment;

    invoke-virtual {v0}, Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeTimeLineFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b015a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 81
    const v1, 0x7f0c038c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2, v0, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 82
    const v0, 0x7f0c0078

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0e0584

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 83
    const v0, 0x7f0c0025

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f020218

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 85
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0e027c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 87
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Ldur;

    invoke-direct {v1}, Ldur;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    return-void
.end method
