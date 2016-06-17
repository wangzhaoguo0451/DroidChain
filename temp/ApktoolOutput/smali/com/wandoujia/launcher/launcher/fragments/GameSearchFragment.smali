.class public Lcom/wandoujia/launcher/launcher/fragments/GameSearchFragment;
.super Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;
.source "GameSearchFragment.java"


# instance fields
.field private g:Landroid/view/View;

.field private h:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 3

    .prologue
    .line 29
    invoke-super {p0}, Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;->a()V

    .line 31
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameSearchFragment;->b:Landroid/view/View;

    sget v1, Lcom/wandoujia/game_launcher/lib/R$id;->game_search_root:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lehx;->a(Landroid/view/View;ILandroid/view/View$OnClickListener;)V

    .line 33
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameSearchFragment;->b:Landroid/view/View;

    sget v1, Lcom/wandoujia/game_launcher/lib/R$id;->more_game:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameSearchFragment;->g:Landroid/view/View;

    .line 34
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameSearchFragment;->b:Landroid/view/View;

    sget v1, Lcom/wandoujia/game_launcher/lib/R$id;->more_game_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameSearchFragment;->h:Landroid/widget/TextView;

    .line 35
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameSearchFragment;->g:Landroid/view/View;

    new-instance v1, Leab;

    invoke-direct {v1, p0}, Leab;-><init>(Lcom/wandoujia/launcher/launcher/fragments/GameSearchFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    invoke-virtual {p0}, Lcom/wandoujia/launcher/launcher/fragments/GameSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Ld;->s(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameSearchFragment;->h:Landroid/widget/TextView;

    sget v1, Lcom/wandoujia/game_launcher/lib/R$string;->install_wandoujia:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 76
    :goto_0
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameSearchFragment;->b:Landroid/view/View;

    sget v1, Lcom/wandoujia/game_launcher/lib/R$id;->container_bg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Leac;

    invoke-direct {v1, p0}, Leac;-><init>(Lcom/wandoujia/launcher/launcher/fragments/GameSearchFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameSearchFragment;->h:Landroid/widget/TextView;

    sget v1, Lcom/wandoujia/game_launcher/lib/R$string;->more_game:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 87
    sget v0, Lcom/wandoujia/game_launcher/lib/R$layout;->game_search_fragment:I

    return v0
.end method

.method public setUserVisibleHint(Z)V
    .locals 1
    .parameter

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;->setUserVisibleHint(Z)V

    .line 93
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameSearchFragment;->e:Lele;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/fragments/GameSearchFragment;->e:Lele;

    invoke-virtual {v0}, Lele;->a()V

    .line 96
    :cond_0
    return-void
.end method
