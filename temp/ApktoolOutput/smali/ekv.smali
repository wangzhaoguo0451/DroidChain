.class public final Lekv;
.super Landroid/os/AsyncTask;
.source "SearchPopupFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/wandoujia/launcher_search/popup/model/BaseSearchResult;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private synthetic d:Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;


# direct methods
.method private constructor <init>(Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lekv;->d:Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 155
    const-string v0, "MANUAL"

    iput-object v0, p0, Lekv;->b:Ljava/lang/String;

    .line 156
    const/16 v0, 0xa

    iput v0, p0, Lekv;->c:I

    .line 161
    iput-object p2, p0, Lekv;->a:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public synthetic constructor <init>(Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;Ljava/lang/String;B)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 153
    invoke-direct {p0, p1, p2}, Lekv;-><init>(Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;Ljava/lang/String;)V

    return-void
.end method

.method private varargs a()Lcom/wandoujia/launcher_search/popup/model/BaseSearchResult;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 166
    const/4 v1, 0x0

    .line 167
    new-instance v2, Lekw;

    invoke-direct {v2}, Lekw;-><init>()V

    .line 168
    invoke-virtual {v2}, Lekw;->getRequestBuilder()Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;

    move-result-object v0

    check-cast v0, Lelb;

    iget-object v3, p0, Lekv;->a:Ljava/lang/String;

    iput-object v3, v0, Lelb;->c:Ljava/lang/String;

    sget-object v3, Lcom/wandoujia/launcher_base/app/SearchConst$SearchMode;->VERTICAL:Lcom/wandoujia/launcher_base/app/SearchConst$SearchMode;

    invoke-virtual {v3}, Lcom/wandoujia/launcher_base/app/SearchConst$SearchMode;->getModeKey()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lelb;->d:Ljava/lang/String;

    sget-object v3, Lcom/wandoujia/launcher_base/app/SearchConst$SearchType;->APP:Lcom/wandoujia/launcher_base/app/SearchConst$SearchType;

    invoke-virtual {v3}, Lcom/wandoujia/launcher_base/app/SearchConst$SearchType;->getTypeKey()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lelb;->e:Ljava/lang/String;

    iget-object v3, p0, Lekv;->b:Ljava/lang/String;

    iput-object v3, v0, Lelb;->f:Ljava/lang/String;

    iput-boolean v4, v0, Lelb;->g:Z

    iput v4, v0, Lefx;->a:I

    iget v3, p0, Lekv;->c:I

    iput v3, v0, Lefx;->b:I

    .line 177
    :try_start_0
    invoke-static {}, Legx;->d()Lcom/wandoujia/rpc/http/client/DataApi;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/wandoujia/rpc/http/client/DataApi;->execute(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResult;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 153
    invoke-direct {p0}, Lekv;->a()Lcom/wandoujia/launcher_search/popup/model/BaseSearchResult;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 11
    .parameter

    .prologue
    const/16 v10, 0x8

    const/4 v1, 0x1

    const/4 v9, 0x3

    const/4 v3, 0x0

    .line 153
    check-cast p1, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResult;

    iget-object v0, p0, Lekv;->d:Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;

    iget-object v0, v0, Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;->c:Landroid/widget/RelativeLayout;

    new-array v2, v1, [Lcom/wandoujia/launcher_base/view/tips/TipsType;

    sget-object v4, Lcom/wandoujia/launcher_base/view/tips/TipsType;->LOADING:Lcom/wandoujia/launcher_base/view/tips/TipsType;

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ld;->a(Landroid/view/View;[Lcom/wandoujia/launcher_base/view/tips/TipsType;)V

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResult;->sections:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResult;->sections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResult;->sections:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher_search/popup/model/SearchSectionResult;

    iget v0, v0, Lcom/wandoujia/launcher_search/popup/model/SearchSectionResult;->totalCount:I

    if-gtz v0, :cond_2

    :cond_0
    move v0, v3

    :goto_0
    if-eqz v0, :cond_e

    iget-object v0, p0, Lekv;->d:Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;

    sget-object v1, Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment$SubViewType;->RESULT_VIEW:Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment$SubViewType;

    invoke-static {v0, v1}, Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;->a(Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment$SubViewType;)V

    iget-object v0, p0, Lekv;->d:Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;

    iget-object v4, v0, Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;->d:Lelh;

    iget-object v0, p0, Lekv;->d:Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;

    iget-object v0, v0, Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;->a:Lcom/wandoujia/launcher_base/app/SearchConst$SearchType;

    iget-object v0, v4, Lelh;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResult;->sections:Ljava/util/List;

    if-nez v0, :cond_6

    :cond_1
    :goto_1
    move v2, v3

    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_b

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem;

    new-instance v5, Lelc;

    iget-object v0, v0, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem;->content:Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchResultContent;

    iget-object v0, v0, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchResultContent;->appLiteInfo:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-direct {v5, v0}, Lelc;-><init>(Lcom/wandoujia/entities/app/AppLiteInfo;)V

    iget-object v0, v4, Lelh;->c:Landroid/widget/LinearLayout;

    invoke-static {v0}, Leld;->a(Landroid/view/ViewGroup;)Leld;

    move-result-object v0

    new-instance v6, Lekq;

    invoke-direct {v6}, Lekq;-><init>()V

    invoke-static {v0, v5}, Lekq;->a(Leld;Lelc;)V

    invoke-virtual {v0}, Leld;->getView()Landroid/view/View;

    move-result-object v7

    sget v8, Lelh;->a:I

    invoke-virtual {v7, v8, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object v6, v0, Leld;->e:Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;

    invoke-static {v6, v2}, Ld;->a(Landroid/view/View;I)V

    iget-object v6, v0, Leld;->e:Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;

    invoke-virtual {v5}, Lelc;->a()Leiu;

    move-result-object v7

    invoke-interface {v7}, Leiu;->d()Ljava/lang/String;

    move-result-object v7

    iget-object v5, v5, Lelc;->a:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v5}, Lcom/wandoujia/entities/app/AppLiteInfo;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v7, v5}, Lcom/wandoujia/launcher_search/utils/SearchLogHelper;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Leld;->e:Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;

    invoke-static {v0}, Lcom/wandoujia/launcher_search/utils/SearchLogHelper;->a(Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_2
    sget-object v2, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;->VALID_CARD_TYPES:[Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;

    iget-object v0, p1, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResult;->sections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher_search/popup/model/SearchSectionResult;

    iget-object v5, v0, Lcom/wandoujia/launcher_search/popup/model/SearchSectionResult;->items:Ljava/util/List;

    if-eqz v5, :cond_3

    iget-object v0, v0, Lcom/wandoujia/launcher_search/popup/model/SearchSectionResult;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem;

    invoke-static {v0, v2}, Ld;->a(Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem;[Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    goto/16 :goto_0

    :cond_5
    move v0, v3

    goto/16 :goto_0

    :cond_6
    sget-object v2, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;->VALID_CARD_TYPES:[Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;

    iget-object v0, p1, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResult;->sections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher_search/popup/model/SearchSectionResult;

    iget-object v6, v0, Lcom/wandoujia/launcher_search/popup/model/SearchSectionResult;->items:Ljava/util/List;

    if-eqz v6, :cond_9

    iget-object v0, v0, Lcom/wandoujia/launcher_search/popup/model/SearchSectionResult;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem;

    invoke-static {v0, v2}, Ld;->a(Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem;[Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$SearchCardType;)Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v9, :cond_8

    :cond_9
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v9, :cond_7

    goto/16 :goto_1

    :cond_a
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    :cond_b
    iget-object v0, p1, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResult;->sections:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher_search/popup/model/SearchSectionResult;

    iget v0, v0, Lcom/wandoujia/launcher_search/popup/model/SearchSectionResult;->totalCount:I

    if-le v0, v9, :cond_d

    iget-object v0, v4, Lelh;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v4, Lelh;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ld;->s(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, v4, Lelh;->d:Landroid/widget/TextView;

    sget v1, Lcom/wandoujia/launcher_search/R$string;->game_launcher_search_more:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, v4, Lelh;->d:Landroid/widget/TextView;

    new-instance v1, Leli;

    invoke-direct {v1, v4, p1}, Leli;-><init>(Lelh;Lcom/wandoujia/launcher_search/popup/model/BaseSearchResult;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_4
    return-void

    :cond_c
    iget-object v0, v4, Lelh;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    :cond_d
    iget-object v0, v4, Lelh;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    :cond_e
    iget-object v0, p0, Lekv;->d:Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;

    sget-object v1, Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment$SubViewType;->NONE_VIEW:Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment$SubViewType;

    invoke-static {v0, v1}, Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;->a(Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment$SubViewType;)V

    goto :goto_4
.end method
