.class public Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;
.super Lcom/wandoujia/ripple_framework/fragment/BaseFragment;
.source "CommunityNewBallotFragment.java"


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/ImageView;

.field private g:Lcom/wandoujia/p4/views/CircleAsyncImageView;

.field private h:Lcom/wandoujia/p4/views/NirvanaListPopupWindow;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;)Lcom/wandoujia/p4/views/NirvanaListPopupWindow;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;->h:Lcom/wandoujia/p4/views/NirvanaListPopupWindow;

    return-object v0
.end method

.method public static synthetic a(Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;->j:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic b(Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;)V
    .locals 10
    .parameter

    .prologue
    const/16 v9, 0xc8

    const/16 v8, 0x14

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 36
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v1, ""

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    :goto_0
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    const v1, 0x7f0e01b7

    invoke-virtual {p0, v1}, Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v5, Ldxa;->a:I

    int-to-long v6, v5

    invoke-static {v0, v1, v6, v7}, Ldxa;->a(Landroid/content/Context;Ljava/lang/String;J)Ldxa;

    move-result-object v0

    invoke-virtual {v0}, Ldxa;->a()V

    move v0, v4

    :goto_3
    if-eqz v0, :cond_1

    new-instance v0, Lfdq;

    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v4, p0, Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;->j:Ljava/lang/String;

    iget-object v5, p0, Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;->i:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lfdq;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lfdq;->execute()V

    :cond_1
    return-void

    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    const v1, 0x7f0e01b5

    invoke-virtual {p0, v1}, Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    iget-object v7, p0, Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;->j:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    const v1, 0x7f0e01b8

    invoke-virtual {p0, v1}, Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_4
    iget-object v7, p0, Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;->i:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    const v1, 0x7f0e01b6

    invoke-virtual {p0, v1}, Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_5
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v8, :cond_6

    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0e022b

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-virtual {p0, v1, v5}, Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget v5, Ldxa;->a:I

    int-to-long v6, v5

    invoke-static {v0, v1, v6, v7}, Ldxa;->a(Landroid/content/Context;Ljava/lang/String;J)Ldxa;

    move-result-object v0

    invoke-virtual {v0}, Ldxa;->a()V

    move v0, v4

    goto :goto_3

    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v9, :cond_7

    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0e01a4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-virtual {p0, v1, v5}, Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget v5, Ldxa;->a:I

    int-to-long v6, v5

    invoke-static {v0, v1, v6, v7}, Ldxa;->a(Landroid/content/Context;Ljava/lang/String;J)Ldxa;

    move-result-object v0

    invoke-virtual {v0}, Ldxa;->a()V

    move v0, v4

    goto/16 :goto_3

    :cond_7
    move v0, v5

    goto/16 :goto_3

    :cond_8
    move-object v0, v3

    goto/16 :goto_1

    :cond_9
    move-object v6, v2

    goto/16 :goto_0
.end method

.method public static synthetic c(Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;->a:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method protected initializePageUri(Landroid/view/View;)Z
    .locals 1
    .parameter

    .prologue
    .line 226
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 86
    invoke-super {p0, p1, p2, p3}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 88
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    if-ne p1, v4, :cond_0

    .line 89
    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    const-string v0, "path_list"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 92
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v4, :cond_1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 93
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;->i:Ljava/lang/String;

    .line 94
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;->f:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;->f:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;->f:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    new-array v4, v4, [Landroid/graphics/Bitmap$Config;

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    aput-object v5, v4, v6

    invoke-static {v1, v2, v3, v4}, Lcom/wandoujia/base/utils/ImageUtil;->decodeBitmap(Ljava/lang/String;II[Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0e01dd

    invoke-virtual {p0, v1}, Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Ldxa;->a:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ldxa;->a(Landroid/content/Context;Ljava/lang/String;J)Ldxa;

    move-result-object v0

    invoke-virtual {v0}, Ldxa;->a()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    const v0, 0x7f0300b9

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 59
    const v0, 0x7f0c0284

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;->a:Landroid/widget/Button;

    .line 60
    const v0, 0x7f0c012d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;->b:Landroid/widget/Button;

    .line 61
    const v0, 0x7f0c0285

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;->d:Landroid/widget/EditText;

    .line 62
    const v0, 0x7f0c0287

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;->c:Landroid/widget/EditText;

    .line 63
    const v0, 0x7f0c0286

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;->f:Landroid/widget/ImageView;

    .line 64
    const v0, 0x7f0c00df

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;->e:Landroid/widget/TextView;

    .line 65
    const v0, 0x7f0c0282

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/views/CircleAsyncImageView;

    iput-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;->g:Lcom/wandoujia/p4/views/CircleAsyncImageView;

    .line 66
    new-instance v0, Lfhb;

    invoke-direct {v0, p0}, Lfhb;-><init>(Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    invoke-static {}, Lchv;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;->e:Landroid/widget/TextView;

    invoke-static {}, Lchv;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;->g:Lcom/wandoujia/p4/views/CircleAsyncImageView;

    invoke-static {}, Lchv;->k()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f020009

    invoke-virtual {v0, v2, v3}, Lcom/wandoujia/p4/views/CircleAsyncImageView;->a(Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;->h:Lcom/wandoujia/p4/views/NirvanaListPopupWindow;

    if-nez v0, :cond_1

    new-instance v0, Lcom/wandoujia/p4/views/NirvanaListPopupWindow;

    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/wandoujia/p4/views/NirvanaListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;->h:Lcom/wandoujia/p4/views/NirvanaListPopupWindow;

    :cond_1
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f080007

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;->h:Lcom/wandoujia/p4/views/NirvanaListPopupWindow;

    new-instance v3, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f0301cf

    invoke-direct {v3, v4, v5, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/wandoujia/p4/views/NirvanaListPopupWindow;->a(Landroid/widget/ListAdapter;)V

    iget-object v2, p0, Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;->h:Lcom/wandoujia/p4/views/NirvanaListPopupWindow;

    iget-object v3, p0, Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;->a:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Lcom/wandoujia/p4/views/NirvanaListPopupWindow;->a(Landroid/view/View;)V

    iget-object v2, p0, Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;->h:Lcom/wandoujia/p4/views/NirvanaListPopupWindow;

    new-instance v3, Lfhe;

    invoke-direct {v3, p0, v0}, Lfhe;-><init>(Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;[Ljava/lang/String;)V

    iput-object v3, v2, Landroid/support/v7/widget/ListPopupWindow;->i:Landroid/widget/AdapterView$OnItemClickListener;

    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;->a:Landroid/widget/Button;

    new-instance v2, Lfhf;

    invoke-direct {v2, p0}, Lfhf;-><init>(Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;->f:Landroid/widget/ImageView;

    new-instance v2, Lfhc;

    invoke-direct {v2, p0}, Lfhc;-><init>(Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;->b:Landroid/widget/Button;

    new-instance v2, Lfhd;

    invoke-direct {v2, p0}, Lfhd;-><init>(Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    return-object v1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-super {p0, p1, p2}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 81
    const v0, 0x7f0e01a7

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/community/fragmant/CommunityNewBallotFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 82
    return-void
.end method
