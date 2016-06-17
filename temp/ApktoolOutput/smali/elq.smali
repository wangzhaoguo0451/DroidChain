.class public Lelq;
.super Ljava/lang/Object;
.source "SuggestionInputView.java"

# interfaces
.implements Lcom/wandoujia/mvc/BaseView;


# instance fields
.field public a:Landroid/widget/AutoCompleteTextView;

.field public b:Lelx;

.field private c:Landroid/os/Handler;

.field private d:Landroid/text/TextWatcher;

.field private e:Landroid/view/View$OnKeyListener;

.field private f:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lelq;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Lels;

    invoke-direct {v0, p0}, Lels;-><init>(Lelq;)V

    iput-object v0, p0, Lelq;->d:Landroid/text/TextWatcher;

    .line 142
    new-instance v0, Lelv;

    invoke-direct {v0, p0}, Lelv;-><init>(Lelq;)V

    iput-object v0, p0, Lelq;->e:Landroid/view/View$OnKeyListener;

    .line 168
    new-instance v0, Lelw;

    invoke-direct {v0, p0}, Lelw;-><init>(Lelq;)V

    iput-object v0, p0, Lelq;->f:Landroid/widget/AdapterView$OnItemClickListener;

    .line 58
    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/widget/AutoCompleteTextView;

    if-nez v0, :cond_1

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    check-cast p1, Landroid/widget/AutoCompleteTextView;

    iput-object p1, p0, Lelq;->a:Landroid/widget/AutoCompleteTextView;

    .line 64
    iget-object v0, p0, Lelq;->a:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lelq;->d:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 65
    iget-object v0, p0, Lelq;->a:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lelq;->e:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 66
    iget-object v0, p0, Lelq;->a:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lelq;->f:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 67
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lelq;->c:Landroid/os/Handler;

    .line 68
    iget-object v0, p0, Lelq;->c:Landroid/os/Handler;

    new-instance v1, Lelr;

    invoke-direct {v1, p0}, Lelr;-><init>(Lelq;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static synthetic a(Lelq;)Landroid/widget/AutoCompleteTextView;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lelq;->a:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Lcom/wandoujia/launcher_search/suggestion/model/SuggestionInfo;
    .locals 3
    .parameter

    .prologue
    .line 103
    new-instance v1, Lelm;

    invoke-direct {v1}, Lelm;-><init>()V

    .line 104
    invoke-virtual {v1}, Lelm;->getRequestBuilder()Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;

    move-result-object v0

    check-cast v0, Lelo;

    iput-object p0, v0, Lelo;->c:Ljava/lang/String;

    const/4 v2, 0x5

    iput v2, v0, Lelo;->e:I

    sget-object v2, Lcom/wandoujia/launcher_base/app/SearchConst$SearchMode;->MIXED:Lcom/wandoujia/launcher_base/app/SearchConst$SearchMode;

    invoke-virtual {v2}, Lcom/wandoujia/launcher_base/app/SearchConst$SearchMode;->getModeKey()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lelo;->d:Ljava/lang/String;

    .line 107
    :try_start_0
    invoke-static {}, Legx;->d()Lcom/wandoujia/rpc/http/client/DataApi;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/wandoujia/rpc/http/client/DataApi;->execute(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher_search/suggestion/model/SuggestionInfo;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lelq;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-static {p1}, Lelq;->a(Ljava/lang/String;)Lcom/wandoujia/launcher_search/suggestion/model/SuggestionInfo;

    move-result-object v0

    iget-object v1, p0, Lelq;->c:Landroid/os/Handler;

    new-instance v2, Lelu;

    invoke-direct {v2, p0, p1, v0}, Lelu;-><init>(Lelq;Ljava/lang/String;Lcom/wandoujia/launcher_search/suggestion/model/SuggestionInfo;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic a(Lelq;Ljava/lang/String;Lcom/wandoujia/launcher_search/suggestion/model/SuggestionInfo;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-virtual {p0}, Lelq;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lelj;

    invoke-direct {v0, p2}, Lelj;-><init>(Lcom/wandoujia/launcher_search/suggestion/model/SuggestionInfo;)V

    iget-object v1, p0, Lelq;->a:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    :try_start_0
    iget-object v0, v0, Leeg;->b:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lelq;->a:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lelq;->a:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->showDropDown()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lelq;Ljava/lang/String;Lcom/wandoujia/launcher_search/utils/SearchLogHelper$QuerySource;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lelq;->b:Lelx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lelq;->b:Lelx;

    iget-object v1, v0, Lelx;->a:Lele;

    invoke-virtual {v1}, Lele;->a()V

    iget-object v0, v0, Lelx;->a:Lele;

    invoke-static {v0, p1, p2}, Lele;->a(Lele;Ljava/lang/String;Lcom/wandoujia/launcher_search/utils/SearchLogHelper$QuerySource;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lelq;I)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lelq;->a:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/wandoujia/launcher_search/suggestion/model/SuggestionCardModel;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/wandoujia/launcher_search/suggestion/model/SuggestionCardModel;

    invoke-virtual {v0}, Lcom/wandoujia/launcher_search/suggestion/model/SuggestionCardModel;->a()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lelq;)Lelx;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lelq;->b:Lelx;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lelq;->a:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lelq;->a:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method
