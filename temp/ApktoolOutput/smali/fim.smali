.class public final Lfim;
.super Landroid/os/AsyncTask;
.source "CommunityUserInfoListFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/wandoujia/p4/community/http/model/CommunityUserStatModel;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/community/fragmant/CommunityUserInfoListFragment;


# direct methods
.method private constructor <init>(Lcom/wandoujia/p4/community/fragmant/CommunityUserInfoListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lfim;->a:Lcom/wandoujia/p4/community/fragmant/CommunityUserInfoListFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/wandoujia/p4/community/fragmant/CommunityUserInfoListFragment;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lfim;-><init>(Lcom/wandoujia/p4/community/fragmant/CommunityUserInfoListFragment;)V

    return-void
.end method

.method private static varargs a()Lcom/wandoujia/p4/community/http/model/CommunityUserStatModel;
    .locals 3

    .prologue
    .line 174
    invoke-static {}, Lchv;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lchv;->t()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    new-instance v1, Lfjw;

    invoke-direct {v1}, Lfjw;-><init>()V

    .line 176
    invoke-virtual {v1}, Lfjw;->getRequestBuilder()Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;

    move-result-object v0

    check-cast v0, Lfml;

    invoke-static {}, Lchv;->t()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lfml;->a:Ljava/lang/String;

    .line 178
    :try_start_0
    invoke-static {}, Lesb;->b()Lfvu;

    move-result-object v0

    invoke-virtual {v0, v1}, Lfvu;->execute(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/community/http/model/CommunityUserStatModel;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 170
    invoke-static {}, Lfim;->a()Lcom/wandoujia/p4/community/http/model/CommunityUserStatModel;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 10
    .parameter

    .prologue
    const v9, 0x7f0e0231

    const v8, 0x7f0e01fa

    const v4, 0x7f0e01f7

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 170
    check-cast p1, Lcom/wandoujia/p4/community/http/model/CommunityUserStatModel;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lfim;->a:Lcom/wandoujia/p4/community/fragmant/CommunityUserInfoListFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/community/fragmant/CommunityUserInfoListFragment;->c(Lcom/wandoujia/p4/community/fragmant/CommunityUserInfoListFragment;)Lcom/wandoujia/p4/community/views/CommunityUserInfoBannerView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfim;->a:Lcom/wandoujia/p4/community/fragmant/CommunityUserInfoListFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/community/fragmant/CommunityUserInfoListFragment;->c(Lcom/wandoujia/p4/community/fragmant/CommunityUserInfoListFragment;)Lcom/wandoujia/p4/community/views/CommunityUserInfoBannerView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/p4/community/views/CommunityUserInfoBannerView;->a()V

    iget-object v0, v2, Lcom/wandoujia/p4/community/views/CommunityUserInfoBannerView;->b:Landroid/view/View;

    const v1, 0x7f0c0422

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, v2, Lcom/wandoujia/p4/community/views/CommunityUserInfoBannerView;->a:Landroid/view/View;

    const v3, 0x7f0c0425

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-nez p1, :cond_1

    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/wandoujia/p4/community/http/model/CommunityUserStatModel;->getTopicsCount()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/wandoujia/p4/community/http/model/CommunityUserStatModel;->getTopicsCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v3, v9, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, v2, Lcom/wandoujia/p4/community/views/CommunityUserInfoBannerView;->b:Landroid/view/View;

    new-instance v3, Lfoh;

    invoke-direct {v3, v2}, Lfoh;-><init>(Lcom/wandoujia/p4/community/views/CommunityUserInfoBannerView;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Lcom/wandoujia/p4/community/http/model/CommunityUserStatModel;->getRepliedTopicsCount()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/wandoujia/p4/community/http/model/CommunityUserStatModel;->getRepliedTopicsCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v9, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v0, v2, Lcom/wandoujia/p4/community/views/CommunityUserInfoBannerView;->a:Landroid/view/View;

    new-instance v1, Lfoi;

    invoke-direct {v1, v2}, Lfoi;-><init>(Lcom/wandoujia/p4/community/views/CommunityUserInfoBannerView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method
