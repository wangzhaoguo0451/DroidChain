.class final Lelf;
.super Ljava/lang/Object;
.source "SearchLauncherBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lele;


# direct methods
.method constructor <init>(Lele;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lelf;->a:Lele;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/wandoujia/launcher_search/R$id;->btn_back:I

    if-ne v0, v1, :cond_1

    .line 55
    iget-object v0, p0, Lelf;->a:Lele;

    invoke-virtual {v0}, Lele;->a()V

    .line 56
    iget-object v0, p0, Lelf;->a:Lele;

    invoke-static {v0}, Lele;->a(Lele;)Lelg;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lelf;->a:Lele;

    invoke-static {v0}, Lele;->a(Lele;)Lelg;

    move-result-object v0

    iget-object v1, v0, Lelg;->a:Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;

    iget-object v1, v1, Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;->f:Leku;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lelg;->a:Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;

    iget-object v1, v1, Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;->f:Leku;

    iget-object v0, v0, Lelg;->a:Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;

    invoke-virtual {v0}, Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Ls;

    move-result-object v0

    invoke-static {v0}, Leku;->a(Ls;)V

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/wandoujia/launcher_search/R$id;->btn_search:I

    if-ne v0, v1, :cond_2

    .line 60
    iget-object v0, p0, Lelf;->a:Lele;

    invoke-virtual {v0}, Lele;->a()V

    .line 61
    iget-object v0, p0, Lelf;->a:Lele;

    iget-object v1, p0, Lelf;->a:Lele;

    invoke-static {v1}, Lele;->b(Lele;)Lelq;

    move-result-object v1

    invoke-virtual {v1}, Lelq;->a()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/wandoujia/launcher_search/utils/SearchLogHelper$QuerySource;->SEARCH:Lcom/wandoujia/launcher_search/utils/SearchLogHelper$QuerySource;

    invoke-static {v0, v1, v2}, Lele;->a(Lele;Ljava/lang/String;Lcom/wandoujia/launcher_search/utils/SearchLogHelper$QuerySource;)V

    .line 62
    iget-object v0, p0, Lelf;->a:Lele;

    invoke-static {v0}, Lele;->b(Lele;)Lelq;

    move-result-object v0

    invoke-virtual {v0}, Lelq;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/wandoujia/launcher_search/utils/SearchLogHelper;->a(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/wandoujia/launcher_search/R$id;->btn_clear:I

    if-ne v0, v1, :cond_0

    .line 64
    iget-object v0, p0, Lelf;->a:Lele;

    invoke-static {v0}, Lele;->b(Lele;)Lelq;

    move-result-object v0

    iget-object v0, v0, Lelq;->a:Landroid/widget/AutoCompleteTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v0, p0, Lelf;->a:Lele;

    invoke-static {v0}, Lele;->b(Lele;)Lelq;

    move-result-object v0

    invoke-virtual {v0}, Lelq;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lehx;->a(Landroid/view/View;)V

    .line 66
    iget-object v0, p0, Lelf;->a:Lele;

    invoke-static {v0}, Lele;->a(Lele;)Lelg;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lelf;->a:Lele;

    invoke-static {v0}, Lele;->a(Lele;)Lelg;

    move-result-object v0

    iget-object v0, v0, Lelg;->a:Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;

    sget-object v1, Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment$SubViewType;->HOT_QUERIES:Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment$SubViewType;

    invoke-static {v0, v1}, Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;->a(Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment$SubViewType;)V

    goto :goto_0
.end method
