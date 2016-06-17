.class public final Lele;
.super Ljava/lang/Object;
.source "SearchLauncherBar.java"

# interfaces
.implements Lcom/wandoujia/mvc/BaseView;


# instance fields
.field public a:Lelg;

.field private b:Landroid/view/View;

.field private c:Lelq;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View$OnClickListener;

.field private f:Lelx;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lelf;

    invoke-direct {v0, p0}, Lelf;-><init>(Lele;)V

    iput-object v0, p0, Lele;->e:Landroid/view/View$OnClickListener;

    .line 73
    new-instance v0, Lelx;

    invoke-direct {v0, p0}, Lelx;-><init>(Lele;)V

    iput-object v0, p0, Lele;->f:Lelx;

    .line 39
    if-nez p1, :cond_0

    .line 49
    :goto_0
    return-void

    .line 42
    :cond_0
    iput-object p1, p0, Lele;->b:Landroid/view/View;

    .line 43
    iget-object v0, p0, Lele;->b:Landroid/view/View;

    sget v1, Lcom/wandoujia/launcher_search/R$id;->btn_back:I

    iget-object v2, p0, Lele;->e:Landroid/view/View$OnClickListener;

    invoke-static {v0, v1, v2}, Lehx;->a(Landroid/view/View;ILandroid/view/View$OnClickListener;)V

    .line 44
    iget-object v0, p0, Lele;->b:Landroid/view/View;

    sget v1, Lcom/wandoujia/launcher_search/R$id;->btn_search:I

    iget-object v2, p0, Lele;->e:Landroid/view/View$OnClickListener;

    invoke-static {v0, v1, v2}, Lehx;->a(Landroid/view/View;ILandroid/view/View$OnClickListener;)V

    .line 45
    new-instance v0, Lelq;

    iget-object v1, p0, Lele;->b:Landroid/view/View;

    sget v2, Lcom/wandoujia/launcher_search/R$id;->edit_search:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lelq;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lele;->c:Lelq;

    .line 46
    iget-object v0, p0, Lele;->c:Lelq;

    iget-object v1, p0, Lele;->f:Lelx;

    iput-object v1, v0, Lelq;->b:Lelx;

    .line 47
    iget-object v0, p0, Lele;->b:Landroid/view/View;

    sget v1, Lcom/wandoujia/launcher_search/R$id;->btn_clear:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lele;->d:Landroid/view/View;

    .line 48
    iget-object v0, p0, Lele;->d:Landroid/view/View;

    iget-object v1, p0, Lele;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method static synthetic a(Lele;)Lelg;
    .locals 1
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lele;->a:Lelg;

    return-object v0
.end method

.method public static synthetic a(Lele;Ljava/lang/String;Lcom/wandoujia/launcher_search/utils/SearchLogHelper$QuerySource;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 16
    iget-object v0, p0, Lele;->a:Lelg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lele;->a:Lelg;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, v0, Lelg;->a:Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;

    invoke-virtual {v0}, Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/wandoujia/launcher_search/R$string;->app_search_no_input:I

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/wandoujia/base/utils/NetworkUtil;->isNetworkConnected()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v0, v0, Lelg;->a:Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;

    invoke-virtual {v0}, Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/wandoujia/launcher_search/R$string;->search_no_network:I

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    iget-object v2, v0, Lelg;->a:Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;

    iget-object v2, v2, Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;->c:Landroid/widget/RelativeLayout;

    sget-object v3, Lcom/wandoujia/launcher_base/view/tips/TipsType;->LOADING:Lcom/wandoujia/launcher_base/view/tips/TipsType;

    invoke-static {v2, v3}, Ld;->a(Landroid/view/View;Lcom/wandoujia/launcher_base/view/tips/TipsType;)Landroid/view/View;

    new-instance v2, Lekv;

    iget-object v3, v0, Lelg;->a:Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;

    invoke-direct {v2, v3, v1, v4}, Lekv;-><init>(Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;Ljava/lang/String;B)V

    new-array v3, v4, [Ljava/lang/Void;

    invoke-static {v2, v3}, Lcom/wandoujia/base/utils/AsyncTaskUtils;->runAsyncTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    iget-object v2, v0, Lelg;->a:Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;

    iget-object v2, v2, Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;->b:Landroid/view/View;

    invoke-static {v2, p2, v1}, Lcom/wandoujia/launcher_search/utils/SearchLogHelper;->a(Landroid/view/View;Lcom/wandoujia/launcher_search/utils/SearchLogHelper$QuerySource;Ljava/lang/String;)V

    iget-object v0, v0, Lelg;->a:Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;

    invoke-virtual {v0}, Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Ld;->q(Landroid/content/Context;)V

    goto :goto_0
.end method

.method static synthetic b(Lele;)Lelq;
    .locals 1
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lele;->c:Lelq;

    return-object v0
.end method

.method public static synthetic c(Lele;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lele;->d:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lele;->c:Lelq;

    invoke-virtual {v0}, Lelq;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lehx;->b(Landroid/view/View;)V

    .line 98
    return-void
.end method

.method public final getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lele;->b:Landroid/view/View;

    return-object v0
.end method
