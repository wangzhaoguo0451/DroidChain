.class public final Leoz;
.super Ljava/lang/Object;
.source "CommonLogTreeBuilder.java"

# interfaces
.implements Lepa;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/view/View;Ljava/util/List;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 105
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 106
    check-cast p0, Landroid/view/ViewGroup;

    .line 107
    instance-of v0, p0, Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    .line 109
    check-cast p0, Landroid/support/v4/view/ViewPager;

    invoke-static {p0}, Ld;->a(Landroid/support/v4/view/ViewPager;)Landroid/view/View;

    move-result-object v0

    .line 110
    if-eqz v0, :cond_0

    .line 111
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    instance-of v0, p0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    const v1, 0x1020002

    if-ne v0, v1, :cond_2

    .line 114
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 115
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 118
    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 119
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 120
    invoke-static {v1}, Leny;->n(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 121
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static a(Landroid/view/View;Ljava/util/Map;Leoa;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Leoa;",
            ">;",
            "Leoa;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 42
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 43
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 46
    const/4 v0, 0x0

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 48
    invoke-static {v0, v3}, Leoz;->a(Landroid/view/View;Ljava/util/List;)V

    .line 50
    invoke-static {v0}, Leny;->g(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    .line 51
    invoke-static {v0}, Leny;->c(Landroid/view/View;)Lcom/wandoujia/logv3/model/packages/UrlPackage$Vertical;

    move-result-object v5

    .line 52
    invoke-static {v0}, Leny;->d(Landroid/view/View;)Leoj;

    move-result-object v6

    .line 53
    invoke-static {v0}, Leny;->e(Landroid/view/View;)Ljava/lang/String;

    move-result-object v7

    .line 55
    if-nez v4, :cond_1

    if-nez v6, :cond_1

    if-nez v7, :cond_1

    if-ne v0, p0, :cond_0

    .line 57
    :cond_1
    invoke-static {v0, p1, p2}, Leoz;->b(Landroid/view/View;Ljava/util/Map;Leoa;)Leoa;

    move-result-object v8

    .line 62
    if-eqz v4, :cond_b

    .line 63
    new-instance v1, Leoa;

    invoke-direct {v1, v4, v8}, Leoa;-><init>(Ljava/lang/String;Leoa;)V

    .line 66
    :goto_1
    if-eqz v5, :cond_3

    .line 67
    if-nez v1, :cond_2

    .line 68
    new-instance v1, Leoa;

    invoke-direct {v1, v2, v8}, Leoa;-><init>(Ljava/lang/String;Leoa;)V

    .line 70
    :cond_2
    iput-object v5, v1, Leoa;->e:Lcom/wandoujia/logv3/model/packages/UrlPackage$Vertical;

    .line 73
    :cond_3
    if-nez v6, :cond_4

    if-eqz v7, :cond_6

    .line 74
    :cond_4
    if-nez v1, :cond_5

    .line 75
    new-instance v1, Leoa;

    invoke-direct {v1, v2, v8}, Leoa;-><init>(Ljava/lang/String;Leoa;)V

    .line 77
    :cond_5
    iput-object v6, v1, Leoa;->b:Leoj;

    .line 78
    iput-object v7, v1, Leoa;->c:Ljava/lang/String;

    .line 79
    invoke-static {v0}, Leny;->f(Landroid/view/View;)Ljava/util/List;

    move-result-object v4

    .line 80
    iput-object v4, v1, Leoa;->d:Ljava/util/List;

    .line 83
    :cond_6
    if-ne v0, p0, :cond_9

    .line 84
    invoke-static {v0}, Leny;->h(Landroid/view/View;)Leok;

    move-result-object v4

    .line 85
    invoke-static {v0}, Leny;->i(Landroid/view/View;)Lcom/wandoujia/logv3/model/packages/ViewLogPackage$IndexPackage;

    move-result-object v5

    .line 87
    if-nez v1, :cond_7

    .line 88
    new-instance v1, Leoa;

    invoke-direct {v1, v2, v8}, Leoa;-><init>(Ljava/lang/String;Leoa;)V

    .line 90
    :cond_7
    if-eqz v4, :cond_8

    .line 91
    iput-object v4, v1, Leoa;->f:Leok;

    .line 93
    :cond_8
    if-eqz v5, :cond_9

    .line 94
    iput-object v5, v1, Leoa;->g:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$IndexPackage;

    .line 97
    :cond_9
    invoke-static {v0}, Leny;->j(Landroid/view/View;)Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;

    move-result-object v4

    .line 98
    iput-object v4, v1, Leoa;->h:Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;

    .line 99
    iget-object v4, v8, Leoa;->j:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 102
    :cond_a
    return-void

    :cond_b
    move-object v1, v2

    goto :goto_1
.end method

.method private static b(Landroid/view/View;Ljava/util/Map;Leoa;)Leoa;
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Leoa;",
            ">;",
            "Leoa;",
            ")",
            "Leoa;"
        }
    .end annotation

    .prologue
    .line 131
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object v1, v0

    .line 133
    :goto_0
    instance-of v0, v1, Landroid/view/View;

    if-eqz v0, :cond_1

    .line 134
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leoa;

    .line 135
    if-eqz v0, :cond_0

    .line 141
    :goto_1
    return-object v0

    .line 139
    :cond_0
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object v1, v0

    .line 140
    goto :goto_0

    :cond_1
    move-object v0, p2

    goto :goto_1
.end method


# virtual methods
.method public final a(Landroid/view/View;)Leoa;
    .locals 2
    .parameter

    .prologue
    .line 33
    new-instance v0, Leoa;

    invoke-direct {v0}, Leoa;-><init>()V

    .line 34
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 36
    invoke-static {p1, v1, v0}, Leoz;->a(Landroid/view/View;Ljava/util/Map;Leoa;)V

    .line 37
    return-object v0
.end method
