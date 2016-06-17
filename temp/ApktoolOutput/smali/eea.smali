.class public final Leea;
.super Ljava/lang/Object;
.source "SlidingTabDot.java"

# interfaces
.implements Lhw;


# instance fields
.field private a:Lcom/wandoujia/launcher/adapter/HomeAdapter$HomeTabInfo;

.field private synthetic b:Lcom/wandoujia/launcher/view/SlidingTabDot;


# direct methods
.method private constructor <init>(Lcom/wandoujia/launcher/view/SlidingTabDot;)V
    .locals 1
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Leea;->b:Lcom/wandoujia/launcher/view/SlidingTabDot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    sget-object v0, Lcom/wandoujia/launcher/adapter/HomeAdapter$HomeTabInfo;->GL:Lcom/wandoujia/launcher/adapter/HomeAdapter$HomeTabInfo;

    iput-object v0, p0, Leea;->a:Lcom/wandoujia/launcher/adapter/HomeAdapter$HomeTabInfo;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/wandoujia/launcher/view/SlidingTabDot;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 78
    invoke-direct {p0, p1}, Leea;-><init>(Lcom/wandoujia/launcher/view/SlidingTabDot;)V

    return-void
.end method

.method private c(I)V
    .locals 8
    .parameter

    .prologue
    .line 103
    invoke-static {}, Lcom/wandoujia/launcher/adapter/HomeAdapter$HomeTabInfo;->values()[Lcom/wandoujia/launcher/adapter/HomeAdapter$HomeTabInfo;

    move-result-object v0

    if-ltz p1, :cond_1

    array-length v1, v0

    if-ge p1, v1, :cond_1

    aget-object v0, v0, p1

    .line 104
    :goto_0
    iget-object v1, p0, Leea;->a:Lcom/wandoujia/launcher/adapter/HomeAdapter$HomeTabInfo;

    sget-object v2, Lcom/wandoujia/launcher/adapter/HomeAdapter$HomeTabInfo;->GL:Lcom/wandoujia/launcher/adapter/HomeAdapter$HomeTabInfo;

    if-ne v1, v2, :cond_3

    .line 105
    sget-object v1, Lcom/wandoujia/launcher/adapter/HomeAdapter$HomeTabInfo;->GF:Lcom/wandoujia/launcher/adapter/HomeAdapter$HomeTabInfo;

    if-ne v0, v1, :cond_2

    .line 106
    sget-object v1, Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;->END:Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;

    sget-object v2, Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;->SUCCESS:Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;

    sget-object v3, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->OPEN:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    const-string v4, "game_launcher_home"

    sget-object v5, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->PAGE:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    sget-object v6, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->SWIPE_RIGHT:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    const-string v7, "swipe_pages"

    invoke-static {v4, v5, v6, v7}, Ld;->a(Ljava/lang/String;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    move-result-object v4

    const-string v5, "gl_review"

    invoke-static {v1, v2, v3, v4, v5}, Ld;->a(Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;Lcom/wandoujia/logv3/model/packages/ViewLogPackage;Ljava/lang/String;)V

    .line 143
    :cond_0
    :goto_1
    iput-object v0, p0, Leea;->a:Lcom/wandoujia/launcher/adapter/HomeAdapter$HomeTabInfo;

    .line 144
    return-void

    .line 103
    :cond_1
    sget-object v0, Lcom/wandoujia/launcher/adapter/HomeAdapter$HomeTabInfo;->GL:Lcom/wandoujia/launcher/adapter/HomeAdapter$HomeTabInfo;

    goto :goto_0

    .line 113
    :cond_2
    sget-object v1, Lcom/wandoujia/launcher/adapter/HomeAdapter$HomeTabInfo;->SEARCH:Lcom/wandoujia/launcher/adapter/HomeAdapter$HomeTabInfo;

    if-ne v0, v1, :cond_0

    .line 114
    sget-object v1, Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;->END:Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;

    sget-object v2, Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;->SUCCESS:Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;

    sget-object v3, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->OPEN:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    const-string v4, "game_launcher_home"

    sget-object v5, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->PAGE:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    sget-object v6, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->SWIPE_LEFT:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    const-string v7, "swipe_pages"

    invoke-static {v4, v5, v6, v7}, Ld;->a(Ljava/lang/String;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    move-result-object v4

    const-string v5, "gl_search"

    invoke-static {v1, v2, v3, v4, v5}, Ld;->a(Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;Lcom/wandoujia/logv3/model/packages/ViewLogPackage;Ljava/lang/String;)V

    goto :goto_1

    .line 122
    :cond_3
    iget-object v1, p0, Leea;->a:Lcom/wandoujia/launcher/adapter/HomeAdapter$HomeTabInfo;

    sget-object v2, Lcom/wandoujia/launcher/adapter/HomeAdapter$HomeTabInfo;->SEARCH:Lcom/wandoujia/launcher/adapter/HomeAdapter$HomeTabInfo;

    if-ne v1, v2, :cond_4

    .line 123
    sget-object v1, Lcom/wandoujia/launcher/adapter/HomeAdapter$HomeTabInfo;->GL:Lcom/wandoujia/launcher/adapter/HomeAdapter$HomeTabInfo;

    if-ne v0, v1, :cond_0

    .line 124
    sget-object v1, Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;->END:Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;

    sget-object v2, Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;->SUCCESS:Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;

    sget-object v3, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->OPEN:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    const-string v4, "game_launcher_search"

    sget-object v5, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->PAGE:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    sget-object v6, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->SWIPE_RIGHT:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    const-string v7, "swipe_pages"

    invoke-static {v4, v5, v6, v7}, Ld;->a(Ljava/lang/String;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    move-result-object v4

    const-string v5, "gl_home"

    invoke-static {v1, v2, v3, v4, v5}, Ld;->a(Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;Lcom/wandoujia/logv3/model/packages/ViewLogPackage;Ljava/lang/String;)V

    goto :goto_1

    .line 132
    :cond_4
    iget-object v1, p0, Leea;->a:Lcom/wandoujia/launcher/adapter/HomeAdapter$HomeTabInfo;

    sget-object v2, Lcom/wandoujia/launcher/adapter/HomeAdapter$HomeTabInfo;->GF:Lcom/wandoujia/launcher/adapter/HomeAdapter$HomeTabInfo;

    if-ne v1, v2, :cond_0

    .line 133
    sget-object v1, Lcom/wandoujia/launcher/adapter/HomeAdapter$HomeTabInfo;->GL:Lcom/wandoujia/launcher/adapter/HomeAdapter$HomeTabInfo;

    if-ne v0, v1, :cond_0

    .line 134
    sget-object v1, Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;->END:Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;

    sget-object v2, Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;->SUCCESS:Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;

    sget-object v3, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->OPEN:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    const-string v4, "game_launcher_review"

    sget-object v5, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->PAGE:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    sget-object v6, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->SWIPE_LEFT:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    const-string v7, "swipe_pages"

    invoke-static {v4, v5, v6, v7}, Ld;->a(Ljava/lang/String;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    move-result-object v4

    const-string v5, "gl_home"

    invoke-static {v1, v2, v3, v4, v5}, Ld;->a(Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;Lcom/wandoujia/logv3/model/packages/ViewLogPackage;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public final a(I)V
    .locals 2
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Leea;->b:Lcom/wandoujia/launcher/view/SlidingTabDot;

    invoke-virtual {v0, p1}, Lcom/wandoujia/launcher/view/SlidingTabDot;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 95
    iget-object v1, p0, Leea;->b:Lcom/wandoujia/launcher/view/SlidingTabDot;

    invoke-static {v1}, Lcom/wandoujia/launcher/view/SlidingTabDot;->b(Lcom/wandoujia/launcher/view/SlidingTabDot;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 96
    iget-object v0, p0, Leea;->b:Lcom/wandoujia/launcher/view/SlidingTabDot;

    iget-object v1, p0, Leea;->b:Lcom/wandoujia/launcher/view/SlidingTabDot;

    invoke-static {v1}, Lcom/wandoujia/launcher/view/SlidingTabDot;->c(Lcom/wandoujia/launcher/view/SlidingTabDot;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/launcher/view/SlidingTabDot;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 97
    iget-object v1, p0, Leea;->b:Lcom/wandoujia/launcher/view/SlidingTabDot;

    invoke-static {v1}, Lcom/wandoujia/launcher/view/SlidingTabDot;->d(Lcom/wandoujia/launcher/view/SlidingTabDot;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 98
    iget-object v0, p0, Leea;->b:Lcom/wandoujia/launcher/view/SlidingTabDot;

    invoke-static {v0, p1}, Lcom/wandoujia/launcher/view/SlidingTabDot;->a(Lcom/wandoujia/launcher/view/SlidingTabDot;I)I

    .line 99
    invoke-direct {p0, p1}, Leea;->c(I)V

    .line 100
    return-void
.end method

.method public final a(IFI)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 83
    return-void
.end method

.method public final b(I)V
    .locals 1
    .parameter

    .prologue
    .line 87
    if-nez p1, :cond_0

    .line 88
    iget-object v0, p0, Leea;->b:Lcom/wandoujia/launcher/view/SlidingTabDot;

    invoke-static {v0}, Lcom/wandoujia/launcher/view/SlidingTabDot;->a(Lcom/wandoujia/launcher/view/SlidingTabDot;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Leea;->c(I)V

    .line 90
    :cond_0
    return-void
.end method
