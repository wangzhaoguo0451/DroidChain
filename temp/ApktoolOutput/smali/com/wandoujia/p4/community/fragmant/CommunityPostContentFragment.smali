.class public abstract Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;
.super Lcom/wandoujia/ripple_framework/fragment/BaseFragment;
.source "CommunityPostContentFragment.java"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/GridView;

.field private e:Lffd;

.field private f:Lcom/wandoujia/p4/button/views/StatefulButton;

.field private g:I

.field private h:I

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:I

.field private k:Lfhk;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->i:Ljava/util/List;

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->j:I

    .line 64
    new-instance v0, Lfhk;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lfhk;-><init>(Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;B)V

    iput-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->k:Lfhk;

    .line 272
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    iput p1, p0, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->j:I

    return p1
.end method

.method public static synthetic a(Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->i:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic a(Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 37
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->g:I

    if-le v0, v1, :cond_0

    const v0, 0x7f0e0203

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    iget v3, p0, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->g:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->c:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public static synthetic b(Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;)Z
    .locals 2
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->i:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->i:Ljava/util/List;

    iget-object v1, p0, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic c(Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;)I
    .locals 1
    .parameter

    .prologue
    .line 37
    iget v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->h:I

    return v0
.end method

.method public static synthetic d(Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method public static synthetic e(Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 37
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static synthetic f(Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;)I
    .locals 1
    .parameter

    .prologue
    .line 37
    iget v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->g:I

    return v0
.end method


# virtual methods
.method protected abstract a()Ljava/lang/CharSequence;
.end method

.method public final a(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 152
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/wandoujia/p4/imagepicker/activity/ImageChooserActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 153
    const-string v1, "max_count"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 154
    const-string v1, "default_tab_pos"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 155
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 156
    return-void
.end method

.method public abstract b()Ljava/lang/CharSequence;
.end method

.method public abstract c()Lfhl;
.end method

.method protected abstract d()V
.end method

.method protected e()I
    .locals 1

    .prologue
    .line 76
    const/16 v0, 0x3e8

    return v0
.end method

.method protected f()I
    .locals 1

    .prologue
    .line 80
    const/16 v0, 0x9

    return v0
.end method

.method protected g()V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 114
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 116
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->i:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->f:Lcom/wandoujia/p4/button/views/StatefulButton;

    new-instance v1, Lfaq;

    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->b()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->k:Lfhk;

    invoke-direct {v1, v2, v3}, Lfaq;-><init>(Ljava/lang/CharSequence;Lcom/wandoujia/mvc/Action;)V

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/button/views/StatefulButton;->setState(Lfaq;)V

    .line 119
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->a()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 120
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->e()I

    move-result v0

    iput v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->g:I

    .line 121
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->f()I

    move-result v0

    iput v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->h:I

    .line 122
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v4, -0x1

    .line 126
    packed-switch p1, :pswitch_data_0

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 128
    :pswitch_0
    if-ne p2, v4, :cond_1

    if-nez p3, :cond_2

    .line 129
    :cond_1
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->g()V

    goto :goto_0

    .line 132
    :cond_2
    const-string v1, "path_list"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v2, p0, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->j:I

    if-ltz v2, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->i:Ljava/util/List;

    iget v3, p0, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->j:I

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iput v4, p0, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->j:I

    :goto_1
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->b:Landroid/widget/EditText;

    const v1, 0x7f0e01ff

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    :goto_2
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->e:Lffd;

    iget-object v1, p0, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->i:Ljava/util/List;

    iput-object v1, v0, Lffd;->a:Ljava/util/List;

    invoke-virtual {v0}, Lffd;->notifyDataSetChanged()V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, v2

    iget v4, p0, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->h:I

    if-le v3, v4, :cond_5

    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->i:Ljava/util/List;

    add-int/lit8 v3, v2, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->i:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_4
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->i:Ljava/util/List;

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2, v1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->i:Ljava/util/List;

    add-int/lit8 v4, v2, -0x1

    if-ltz v4, :cond_6

    add-int/lit8 v0, v2, -0x1

    :cond_6
    invoke-interface {v3, v0, v1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->g()V

    goto :goto_2

    .line 136
    :pswitch_1
    invoke-static {}, Lchv;->m()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->k:Lfhk;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->k:Lfhk;

    invoke-virtual {v0}, Lfhk;->execute()V

    goto/16 :goto_0

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 102
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->d()V

    .line 103
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 107
    const v0, 0x7f0301cb

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->a:Landroid/view/View;

    .line 108
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->a:Landroid/view/View;

    const v1, 0x7f0c0077

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->a:Landroid/view/View;

    const v1, 0x7f0c041b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->b:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->a:Landroid/view/View;

    const v1, 0x7f0c041a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/button/views/StatefulButton;

    iput-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->f:Lcom/wandoujia/p4/button/views/StatefulButton;

    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->b:Landroid/widget/EditText;

    new-instance v1, Lfhi;

    invoke-direct {v1, p0}, Lfhi;-><init>(Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->a:Landroid/view/View;

    const v1, 0x7f0c041c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->d:Landroid/widget/GridView;

    new-instance v0, Lffd;

    invoke-virtual {p0}, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->i:Ljava/util/List;

    iget-object v3, p0, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->d:Landroid/widget/GridView;

    invoke-direct {v0, v1, v2, v3}, Lffd;-><init>(Landroid/app/Activity;Ljava/util/List;Landroid/widget/GridView;)V

    iput-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->e:Lffd;

    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->d:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->e:Lffd;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->d:Landroid/widget/GridView;

    new-instance v1, Lfhj;

    invoke-direct {v1, p0}, Lfhj;-><init>(Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 109
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityPostContentFragment;->a:Landroid/view/View;

    return-object v0
.end method
