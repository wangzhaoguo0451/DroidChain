.class public Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;
.super Landroid/support/v4/app/Fragment;
.source "SearchPopupFragment.java"

# interfaces
.implements Lekr;


# instance fields
.field public a:Lcom/wandoujia/launcher_base/app/SearchConst$SearchType;

.field public b:Landroid/view/View;

.field public c:Landroid/widget/RelativeLayout;

.field public d:Lelh;

.field public e:Lele;

.field public f:Leku;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Lelg;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 45
    sget-object v0, Lcom/wandoujia/launcher_base/app/SearchConst$SearchType;->GAME:Lcom/wandoujia/launcher_base/app/SearchConst$SearchType;

    iput-object v0, p0, Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;->a:Lcom/wandoujia/launcher_base/app/SearchConst$SearchType;

    .line 120
    new-instance v0, Lelg;

    invoke-direct {v0, p0}, Lelg;-><init>(Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;)V

    iput-object v0, p0, Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;->j:Lelg;

    .line 153
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment$SubViewType;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 36
    const/4 v0, 0x0

    sget-object v1, Lekt;->a:[I

    invoke-virtual {p1}, Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment$SubViewType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;->g:Landroid/view/View;

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;->g:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;->g:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iput-object v0, p0, Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;->g:Landroid/view/View;

    iget-object v0, p0, Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;->g:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;->h:Landroid/view/View;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;->c:Landroid/widget/RelativeLayout;

    sget v1, Lcom/wandoujia/launcher_search/R$layout;->search_hot_view:I

    invoke-static {v0, v1}, Lehx;->a(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;->h:Landroid/view/View;

    :cond_2
    iget-object v0, p0, Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;->h:Landroid/view/View;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;->d:Lelh;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;->c:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lelh;->a(Landroid/view/ViewGroup;)Lelh;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;->d:Lelh;

    :cond_3
    iget-object v0, p0, Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;->d:Lelh;

    invoke-virtual {v0}, Lelh;->getView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;->i:Landroid/view/View;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;->c:Landroid/widget/RelativeLayout;

    sget v1, Lcom/wandoujia/launcher_search/R$layout;->search_none_view:I

    invoke-static {v0, v1}, Lehx;->a(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;->i:Landroid/view/View;

    :cond_4
    iget-object v0, p0, Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;->i:Landroid/view/View;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 89
    const-string v1, "search_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/launcher_base/app/SearchConst$SearchType;->parseFrom(Ljava/lang/String;)Lcom/wandoujia/launcher_base/app/SearchConst$SearchType;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;->a:Lcom/wandoujia/launcher_base/app/SearchConst$SearchType;

    .line 91
    iget-object v0, p0, Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;->a:Lcom/wandoujia/launcher_base/app/SearchConst$SearchType;

    invoke-static {v0}, Lcom/wandoujia/launcher_search/utils/SearchLogHelper;->a(Lcom/wandoujia/launcher_base/app/SearchConst$SearchType;)V

    .line 92
    iget-object v0, p0, Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;->b:Landroid/view/View;

    invoke-static {v0}, Lcom/wandoujia/launcher_search/utils/SearchLogHelper;->a(Landroid/view/View;)V

    .line 95
    iget-object v0, p0, Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;->b:Landroid/view/View;

    sget v1, Lcom/wandoujia/launcher_search/R$id;->game_search_root:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Leks;

    invoke-direct {v1, p0}, Leks;-><init>(Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v0, p0, Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;->b:Landroid/view/View;

    sget v1, Lcom/wandoujia/launcher_search/R$id;->game_search_visible_root:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 106
    invoke-static {v0}, Lehx;->c(Landroid/view/View;)V

    .line 108
    new-instance v0, Lele;

    iget-object v1, p0, Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;->b:Landroid/view/View;

    sget v2, Lcom/wandoujia/launcher_search/R$id;->search_bar:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lele;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;->e:Lele;

    .line 109
    iget-object v0, p0, Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;->e:Lele;

    iget-object v1, p0, Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;->j:Lelg;

    iput-object v1, v0, Lele;->a:Lelg;

    .line 110
    iget-object v0, p0, Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;->a:Lcom/wandoujia/launcher_base/app/SearchConst$SearchType;

    sget-object v1, Lcom/wandoujia/launcher_base/app/SearchConst$SearchType;->APP:Lcom/wandoujia/launcher_base/app/SearchConst$SearchType;

    if-ne v0, v1, :cond_0

    .line 111
    iget-object v0, p0, Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;->b:Landroid/view/View;

    sget v1, Lcom/wandoujia/launcher_search/R$id;->edit_search:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 112
    if-eqz v0, :cond_0

    .line 113
    sget v1, Lcom/wandoujia/launcher_search/R$string;->app_launcher_search_hint:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;->b:Landroid/view/View;

    sget v1, Lcom/wandoujia/launcher_search/R$id;->game_search_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;->c:Landroid/widget/RelativeLayout;

    .line 118
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 84
    sget v0, Lcom/wandoujia/launcher_search/R$layout;->search_popup_fragment:I

    return v0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;->f:Leku;

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Ls;

    move-result-object v0

    invoke-static {v0}, Leku;->a(Ls;)V

    .line 68
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;->b()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;->b:Landroid/view/View;

    .line 73
    invoke-virtual {p0}, Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;->a()V

    .line 74
    iget-object v0, p0, Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;->b:Landroid/view/View;

    return-object v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 79
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 80
    iget-object v0, p0, Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;->a:Lcom/wandoujia/launcher_base/app/SearchConst$SearchType;

    invoke-static {v0}, Lcom/wandoujia/launcher_search/utils/SearchLogHelper;->a(Lcom/wandoujia/launcher_base/app/SearchConst$SearchType;)V

    .line 81
    return-void
.end method
