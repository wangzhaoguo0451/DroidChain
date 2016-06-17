.class public Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;
.super Lcom/wandoujia/jupiter/toolbar/JupiterToolbar;
.source "JupiterToolbarForSearch.java"


# instance fields
.field private b:Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;

.field private c:Landroid/widget/ImageView;

.field private d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/wandoujia/jupiter/toolbar/JupiterToolbar;-><init>(Landroid/content/Context;)V

    .line 127
    new-instance v0, Ldvd;

    invoke-direct {v0, p0}, Ldvd;-><init>(Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;)V

    iput-object v0, p0, Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;->d:Ljava/lang/Runnable;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/jupiter/toolbar/JupiterToolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 127
    new-instance v0, Ldvd;

    invoke-direct {v0, p0}, Ldvd;-><init>(Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;)V

    iput-object v0, p0, Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;->d:Ljava/lang/Runnable;

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/wandoujia/jupiter/toolbar/JupiterToolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 127
    new-instance v0, Ldvd;

    invoke-direct {v0, p0}, Ldvd;-><init>(Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;)V

    iput-object v0, p0, Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;->d:Ljava/lang/Runnable;

    .line 48
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;)Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;->b:Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;

    return-object v0
.end method

.method public static synthetic a(Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e052a

    sget v2, Ldxa;->b:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ldxa;->a(Landroid/content/Context;IJ)Ldxa;

    move-result-object v0

    invoke-virtual {v0}, Ldxa;->a()V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lham;->f:Lham;

    const-string v1, "navigation"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MANUAL"

    invoke-static {v0, v1, v2}, Lcom/wandoujia/jupiter/navigation/NavigationManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lham;->f:Lham;

    iget-object v0, v0, Lhal;->e:Lcom/wandoujia/ripple_framework/log/Logger;

    iget-object v1, p0, Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;->c:Landroid/widget/ImageView;

    sget-object v2, Lcom/wandoujia/ripple_framework/log/Logger$Module;->UI:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    sget-object v3, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->MENU_ITEM:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    sget-object v4, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->REDIRECT:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "wdj://search/result/"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/wandoujia/ripple_framework/log/Logger;->a(Landroid/view/View;Lcom/wandoujia/ripple_framework/log/Logger$Module;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;Ljava/lang/Long;)Lcom/wandoujia/ripple_framework/log/Logger;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/log/Logger;->a(Landroid/view/View;)V

    goto :goto_0
.end method

.method public static synthetic a(Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;->setImeVisibility(Z)V

    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 157
    iget-object v1, p0, Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;->c:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;->b:Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;

    invoke-virtual {v0}, Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 158
    return-void

    .line 157
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic b(Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;->b()V

    return-void
.end method

.method private setImeVisibility(Z)V
    .locals 1
    .parameter

    .prologue
    .line 148
    if-eqz p1, :cond_0

    .line 149
    iget-object v0, p0, Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;->d:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;->post(Ljava/lang/Runnable;)Z

    .line 154
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;->d:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 152
    invoke-static {p0}, Lcom/wandoujia/base/utils/KeyboardUtils;->hideSoftInput(Landroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method protected final a()Landroid/view/View;
    .locals 5

    .prologue
    .line 52
    const v0, 0x7f03021b

    invoke-static {p0, v0}, Lj;->a(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v2

    .line 53
    iget v0, p0, Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;->a:I

    if-lez v0, :cond_1

    .line 54
    const v0, 0x7f0c0079

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 57
    const v1, 0x7f0c0482

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;

    iput-object v1, p0, Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;->b:Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;

    .line 58
    iget-object v1, p0, Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;->b:Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;

    new-instance v3, Ldss;

    invoke-direct {v3, p0}, Ldss;-><init>(Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;)V

    invoke-virtual {v1, v3}, Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;->setOnSearchListener(Ldss;)V

    .line 65
    const v1, 0x7f0c0376

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;->c:Landroid/widget/ImageView;

    .line 66
    iget-object v1, p0, Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;->c:Landroid/widget/ImageView;

    new-instance v3, Ldva;

    invoke-direct {v3, p0}, Ldva;-><init>(Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v1, p0, Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;->b:Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;

    new-instance v3, Ldvb;

    invoke-direct {v3, p0}, Ldvb;-><init>(Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;)V

    invoke-virtual {v1, v3}, Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 88
    invoke-direct {p0}, Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;->b()V

    .line 91
    iget v1, p0, Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;->a:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->inflateMenu(I)V

    .line 93
    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const v3, 0x7f0c050e

    invoke-interface {v1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 94
    if-eqz v1, :cond_0

    .line 95
    new-instance v3, Lcom/wandoujia/jupiter/toolbar/MythingMenuView;

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/wandoujia/jupiter/toolbar/MythingMenuView;-><init>(Landroid/content/Context;)V

    .line 96
    const/16 v4, 0xb

    invoke-static {v4}, Lcom/wandoujia/base/utils/SystemUtil;->aboveApiLevel(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 97
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 101
    :cond_0
    new-instance v1, Ldvc;

    invoke-direct {v1, p0}, Ldvc;-><init>(Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setOnMenuItemClickListener$486aeec7(Lrw;)V

    .line 122
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;->a(Z)V

    .line 124
    :cond_1
    return-object v2
.end method

.method public final a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 139
    new-instance v0, Ldve;

    invoke-direct {v0, p0, p1}, Ldve;-><init>(Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;Z)V

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;->post(Ljava/lang/Runnable;)Z

    .line 145
    return-void
.end method
