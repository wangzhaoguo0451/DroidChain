.class public abstract Lfya;
.super Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;
.source "BaseImageChooserAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M::",
        "Lcom/wandoujia/mvc/BaseModel;",
        ">",
        "Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter",
        "<TM;>;"
    }
.end annotation


# instance fields
.field protected d:Landroid/app/Activity;

.field protected final e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Lfyc;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILfyc;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;-><init>(Landroid/content/Context;)V

    move-object v0, p1

    .line 41
    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lfya;->d:Landroid/app/Activity;

    .line 42
    iput p2, p0, Lfya;->e:I

    .line 43
    iput-object p3, p0, Lfya;->i:Lfyc;

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, v0}, Lfya;->b(I)V

    .line 46
    return-void
.end method

.method static synthetic a(Lfya;J)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-virtual {p0, p1, p2}, Lfya;->b(J)V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/view/ViewGroup;)Lcom/wandoujia/mvc/BaseView;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")",
            "Lcom/wandoujia/mvc/BaseView;"
        }
    .end annotation

    .prologue
    .line 76
    invoke-static {p1}, Lcom/wandoujia/p4/imagepicker/view/ImageFolderView;->a(Landroid/view/ViewGroup;)Lcom/wandoujia/p4/imagepicker/view/ImageFolderView;

    move-result-object v0

    return-object v0
.end method

.method public final b(I)V
    .locals 3
    .parameter

    .prologue
    .line 49
    iput p1, p0, Lfya;->h:I

    .line 50
    iget-object v0, p0, Lfya;->d:Landroid/app/Activity;

    iget v1, p0, Lfya;->h:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x4

    iput v1, p0, Lfya;->f:I

    :goto_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/SystemUtil;->getScreenWidth(Landroid/view/WindowManager;)I

    move-result v0

    iget v1, p0, Lfya;->f:I

    div-int/2addr v0, v1

    iput v0, p0, Lfya;->g:I

    .line 51
    return-void

    .line 50
    :cond_0
    const/4 v1, 0x3

    iput v1, p0, Lfya;->f:I

    goto :goto_0
.end method

.method protected final e()Landroid/view/View;
    .locals 3

    .prologue
    .line 69
    invoke-super {p0}, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->e()Landroid/view/View;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lfya;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a012e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 71
    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 81
    invoke-super {p0, p1, p2, p3}, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter$ContainerView;

    .line 83
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lfya;->g:I

    iget v3, p0, Lfya;->g:I

    invoke-direct {v2, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 86
    invoke-virtual {v0}, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter$ContainerView;->getOriginView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/p4/imagepicker/view/ImageFolderView;

    .line 87
    invoke-virtual {v1, v2}, Lcom/wandoujia/p4/imagepicker/view/ImageFolderView;->setImageLayoutParams(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 88
    new-instance v3, Lfyb;

    invoke-direct {v3, p0, p1}, Lfyb;-><init>(Lfya;I)V

    invoke-virtual {v1, v3}, Lcom/wandoujia/p4/imagepicker/view/ImageFolderView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    invoke-virtual {v0}, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter$ContainerView;->getCoverView()Landroid/view/View;

    move-result-object v1

    .line 97
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    return-object v0
.end method

.method public l()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    const/4 v0, 0x0

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 112
    invoke-super {p0}, Lcom/wandoujia/p4/adapter/BaseCardSelectableAdapter;->notifyDataSetChanged()V

    .line 113
    iget-object v0, p0, Lfya;->i:Lfyc;

    if-eqz v0, :cond_1

    .line 114
    invoke-virtual {p0}, Lfya;->c()I

    move-result v0

    .line 115
    iget-object v1, p0, Lfya;->i:Lfyc;

    invoke-virtual {p0}, Lfya;->c()I

    move-result v2

    iget-object v3, v1, Lfyc;->a:Lcom/wandoujia/p4/imagepicker/fragment/BaseImageTabFragment;

    invoke-virtual {v3}, Lcom/wandoujia/p4/imagepicker/fragment/BaseImageTabFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, v1, Lfyc;->a:Lcom/wandoujia/p4/imagepicker/fragment/BaseImageTabFragment;

    invoke-static {v3}, Lcom/wandoujia/p4/imagepicker/fragment/BaseImageTabFragment;->a(Lcom/wandoujia/p4/imagepicker/fragment/BaseImageTabFragment;)Landroid/widget/Button;

    move-result-object v3

    iget-object v1, v1, Lfyc;->a:Lcom/wandoujia/p4/imagepicker/fragment/BaseImageTabFragment;

    invoke-virtual {v1}, Lcom/wandoujia/p4/imagepicker/fragment/BaseImageTabFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0e0376

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-virtual {v1, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 116
    :cond_0
    if-lez v0, :cond_2

    iget v1, p0, Lfya;->e:I

    if-gt v0, v1, :cond_2

    .line 117
    iget-object v0, p0, Lfya;->i:Lfyc;

    iget-object v0, v0, Lfyc;->a:Lcom/wandoujia/p4/imagepicker/fragment/BaseImageTabFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/imagepicker/fragment/BaseImageTabFragment;->a(Lcom/wandoujia/p4/imagepicker/fragment/BaseImageTabFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 122
    :cond_1
    :goto_0
    return-void

    .line 119
    :cond_2
    iget-object v0, p0, Lfya;->i:Lfyc;

    iget-object v0, v0, Lfyc;->a:Lcom/wandoujia/p4/imagepicker/fragment/BaseImageTabFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/imagepicker/fragment/BaseImageTabFragment;->a(Lcom/wandoujia/p4/imagepicker/fragment/BaseImageTabFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
