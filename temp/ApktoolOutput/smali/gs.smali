.class public final Lgs;
.super Ljava/lang/Object;
.source "ViewCompat.java"


# static fields
.field private static a:Lhc;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1499
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1500
    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 1501
    new-instance v0, Lhb;

    invoke-direct {v0}, Lhb;-><init>()V

    sput-object v0, Lgs;->a:Lhc;

    .line 1519
    :goto_0
    return-void

    .line 1502
    :cond_0
    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 1503
    new-instance v0, Lha;

    invoke-direct {v0}, Lha;-><init>()V

    sput-object v0, Lgs;->a:Lhc;

    goto :goto_0

    .line 1504
    :cond_1
    const/16 v1, 0x11

    if-lt v0, v1, :cond_2

    .line 1505
    new-instance v0, Lgz;

    invoke-direct {v0}, Lgz;-><init>()V

    sput-object v0, Lgs;->a:Lhc;

    goto :goto_0

    .line 1506
    :cond_2
    const/16 v1, 0x10

    if-lt v0, v1, :cond_3

    .line 1507
    new-instance v0, Lgy;

    invoke-direct {v0}, Lgy;-><init>()V

    sput-object v0, Lgs;->a:Lhc;

    goto :goto_0

    .line 1508
    :cond_3
    const/16 v1, 0xe

    if-lt v0, v1, :cond_4

    .line 1509
    new-instance v0, Lgx;

    invoke-direct {v0}, Lgx;-><init>()V

    sput-object v0, Lgs;->a:Lhc;

    goto :goto_0

    .line 1510
    :cond_4
    const/16 v1, 0xb

    if-lt v0, v1, :cond_5

    .line 1511
    new-instance v0, Lgw;

    invoke-direct {v0}, Lgw;-><init>()V

    sput-object v0, Lgs;->a:Lhc;

    goto :goto_0

    .line 1512
    :cond_5
    const/16 v1, 0x9

    if-lt v0, v1, :cond_6

    .line 1513
    new-instance v0, Lgv;

    invoke-direct {v0}, Lgv;-><init>()V

    sput-object v0, Lgs;->a:Lhc;

    goto :goto_0

    .line 1514
    :cond_6
    const/4 v1, 0x7

    if-lt v0, v1, :cond_7

    .line 1515
    new-instance v0, Lgu;

    invoke-direct {v0}, Lgu;-><init>()V

    sput-object v0, Lgs;->a:Lhc;

    goto :goto_0

    .line 1517
    :cond_7
    new-instance v0, Lgt;

    invoke-direct {v0}, Lgt;-><init>()V

    sput-object v0, Lgs;->a:Lhc;

    goto :goto_0
.end method

.method public static A(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 2831
    sget-object v0, Lgs;->a:Lhc;

    invoke-interface {v0, p0}, Lhc;->A(Landroid/view/View;)V

    .line 2832
    return-void
.end method

.method public static B(Landroid/view/View;)Z
    .locals 1
    .parameter

    .prologue
    .line 2961
    sget-object v0, Lgs;->a:Lhc;

    invoke-interface {v0, p0}, Lhc;->B(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static C(Landroid/view/View;)Z
    .locals 1
    .parameter

    .prologue
    .line 3006
    sget-object v0, Lgs;->a:Lhc;

    invoke-interface {v0, p0}, Lhc;->C(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static a(III)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2081
    sget-object v0, Lgs;->a:Lhc;

    invoke-interface {v0, p0, p1, p2}, Lhc;->a(III)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/view/View;)I
    .locals 1
    .parameter

    .prologue
    .line 1554
    sget-object v0, Lgs;->a:Lhc;

    invoke-interface {v0, p0}, Lhc;->a(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/view/View;Liv;)Liv;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2648
    sget-object v0, Lgs;->a:Lhc;

    invoke-interface {v0, p0, p1}, Lhc;->a(Landroid/view/View;Liv;)Liv;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/view/View;F)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2306
    sget-object v0, Lgs;->a:Lhc;

    invoke-interface {v0, p0, p1}, Lhc;->a(Landroid/view/View;F)V

    .line 2307
    return-void
.end method

.method public static a(Landroid/view/View;IIII)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1755
    sget-object v0, Lgs;->a:Lhc;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lhc;->a(Landroid/view/View;IIII)V

    .line 1756
    return-void
.end method

.method public static a(Landroid/view/View;ILandroid/graphics/Paint;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1927
    sget-object v0, Lgs;->a:Lhc;

    invoke-interface {v0, p0, p1, p2}, Lhc;->a(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 1928
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/graphics/Paint;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2004
    sget-object v0, Lgs;->a:Lhc;

    invoke-interface {v0, p0, p1}, Lhc;->a(Landroid/view/View;Landroid/graphics/Paint;)V

    .line 2005
    return-void
.end method

.method public static a(Landroid/view/View;Lel;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1691
    sget-object v0, Lgs;->a:Lhc;

    invoke-interface {v0, p0, p1}, Lhc;->a(Landroid/view/View;Lel;)V

    .line 1692
    return-void
.end method

.method public static a(Landroid/view/View;Lge;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2632
    sget-object v0, Lgs;->a:Lhc;

    invoke-interface {v0, p0, p1}, Lhc;->a(Landroid/view/View;Lge;)V

    .line 2633
    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1769
    sget-object v0, Lgs;->a:Lhc;

    invoke-interface {v0, p0, p1}, Lhc;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1770
    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/Runnable;J)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1786
    sget-object v0, Lgs;->a:Lhc;

    invoke-interface {v0, p0, p1, p2, p3}, Lhc;->a(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 1787
    return-void
.end method

.method public static a(Landroid/view/View;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2689
    sget-object v0, Lgs;->a:Lhc;

    invoke-interface {v0, p0, p1}, Lhc;->a(Landroid/view/View;Z)V

    .line 2690
    return-void
.end method

.method public static a(Landroid/view/ViewGroup;)V
    .locals 1
    .parameter

    .prologue
    .line 2594
    sget-object v0, Lgs;->a:Lhc;

    invoke-interface {v0, p0}, Lhc;->a(Landroid/view/ViewGroup;)V

    .line 2595
    return-void
.end method

.method public static a(Landroid/view/View;I)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1529
    sget-object v0, Lgs;->a:Lhc;

    invoke-interface {v0, p0, p1}, Lhc;->a(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/View;F)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2322
    sget-object v0, Lgs;->a:Lhc;

    invoke-interface {v0, p0, p1}, Lhc;->b(Landroid/view/View;F)V

    .line 2323
    return-void
.end method

.method public static b(Landroid/view/View;)Z
    .locals 1
    .parameter

    .prologue
    .line 1701
    sget-object v0, Lgs;->a:Lhc;

    invoke-interface {v0, p0}, Lhc;->b(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/View;I)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1540
    sget-object v0, Lgs;->a:Lhc;

    invoke-interface {v0, p0, p1}, Lhc;->b(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public static c(Landroid/view/View;F)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2338
    sget-object v0, Lgs;->a:Lhc;

    invoke-interface {v0, p0, p1}, Lhc;->c(Landroid/view/View;F)V

    .line 2339
    return-void
.end method

.method public static c(Landroid/view/View;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1828
    sget-object v0, Lgs;->a:Lhc;

    invoke-interface {v0, p0, p1}, Lhc;->c(Landroid/view/View;I)V

    .line 1829
    return-void
.end method

.method public static c(Landroid/view/View;)Z
    .locals 1
    .parameter

    .prologue
    .line 1713
    sget-object v0, Lgs;->a:Lhc;

    invoke-interface {v0, p0}, Lhc;->c(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static d(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 1737
    sget-object v0, Lgs;->a:Lhc;

    invoke-interface {v0, p0}, Lhc;->d(Landroid/view/View;)V

    .line 1738
    return-void
.end method

.method public static d(Landroid/view/View;F)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2416
    sget-object v0, Lgs;->a:Lhc;

    invoke-interface {v0, p0, p1}, Lhc;->d(Landroid/view/View;F)V

    .line 2417
    return-void
.end method

.method public static e(Landroid/view/View;)I
    .locals 1
    .parameter

    .prologue
    .line 1804
    sget-object v0, Lgs;->a:Lhc;

    invoke-interface {v0, p0}, Lhc;->e(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static e(Landroid/view/View;F)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2428
    sget-object v0, Lgs;->a:Lhc;

    invoke-interface {v0, p0, p1}, Lhc;->e(Landroid/view/View;F)V

    .line 2429
    return-void
.end method

.method public static f(Landroid/view/View;)F
    .locals 1
    .parameter

    .prologue
    .line 1884
    sget-object v0, Lgs;->a:Lhc;

    invoke-interface {v0, p0}, Lhc;->f(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public static f(Landroid/view/View;F)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2516
    sget-object v0, Lgs;->a:Lhc;

    invoke-interface {v0, p0, p1}, Lhc;->f(Landroid/view/View;F)V

    .line 2517
    return-void
.end method

.method public static g(Landroid/view/View;)I
    .locals 1
    .parameter

    .prologue
    .line 1948
    sget-object v0, Lgs;->a:Lhc;

    invoke-interface {v0, p0}, Lhc;->g(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static h(Landroid/view/View;)I
    .locals 1
    .parameter

    .prologue
    .line 2019
    sget-object v0, Lgs;->a:Lhc;

    invoke-interface {v0, p0}, Lhc;->h(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static i(Landroid/view/View;)Landroid/view/ViewParent;
    .locals 1
    .parameter

    .prologue
    .line 2051
    sget-object v0, Lgs;->a:Lhc;

    invoke-interface {v0, p0}, Lhc;->i(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method

.method public static j(Landroid/view/View;)Z
    .locals 1
    .parameter

    .prologue
    .line 2064
    sget-object v0, Lgs;->a:Lhc;

    invoke-interface {v0, p0}, Lhc;->j(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static k(Landroid/view/View;)I
    .locals 1
    .parameter

    .prologue
    .line 2095
    sget-object v0, Lgs;->a:Lhc;

    invoke-interface {v0, p0}, Lhc;->k(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static l(Landroid/view/View;)I
    .locals 1
    .parameter

    .prologue
    .line 2120
    sget-object v0, Lgs;->a:Lhc;

    invoke-interface {v0, p0}, Lhc;->l(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static m(Landroid/view/View;)F
    .locals 1
    .parameter

    .prologue
    .line 2245
    sget-object v0, Lgs;->a:Lhc;

    invoke-interface {v0, p0}, Lhc;->m(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public static n(Landroid/view/View;)F
    .locals 1
    .parameter

    .prologue
    .line 2258
    sget-object v0, Lgs;->a:Lhc;

    invoke-interface {v0, p0}, Lhc;->n(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public static o(Landroid/view/View;)I
    .locals 1
    .parameter

    .prologue
    .line 2269
    sget-object v0, Lgs;->a:Lhc;

    invoke-interface {v0, p0}, Lhc;->q(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static p(Landroid/view/View;)I
    .locals 1
    .parameter

    .prologue
    .line 2280
    sget-object v0, Lgs;->a:Lhc;

    invoke-interface {v0, p0}, Lhc;->r(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static q(Landroid/view/View;)Lig;
    .locals 1
    .parameter

    .prologue
    .line 2292
    sget-object v0, Lgs;->a:Lhc;

    invoke-interface {v0, p0}, Lhc;->s(Landroid/view/View;)Lig;

    move-result-object v0

    return-object v0
.end method

.method public static r(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 2366
    sget-object v0, Lgs;->a:Lhc;

    invoke-interface {v0, p0}, Lhc;->t(Landroid/view/View;)V

    .line 2367
    return-void
.end method

.method public static s(Landroid/view/View;)F
    .locals 1
    .parameter

    .prologue
    .line 2466
    sget-object v0, Lgs;->a:Lhc;

    invoke-interface {v0, p0}, Lhc;->u(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public static t(Landroid/view/View;)F
    .locals 1
    .parameter

    .prologue
    .line 2501
    sget-object v0, Lgs;->a:Lhc;

    invoke-interface {v0, p0}, Lhc;->p(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public static u(Landroid/view/View;)F
    .locals 1
    .parameter

    .prologue
    .line 2509
    sget-object v0, Lgs;->a:Lhc;

    invoke-interface {v0, p0}, Lhc;->o(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public static v(Landroid/view/View;)I
    .locals 1
    .parameter

    .prologue
    .line 2573
    sget-object v0, Lgs;->a:Lhc;

    invoke-interface {v0, p0}, Lhc;->v(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static w(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 2581
    sget-object v0, Lgs;->a:Lhc;

    invoke-interface {v0, p0}, Lhc;->w(Landroid/view/View;)V

    .line 2582
    return-void
.end method

.method public static x(Landroid/view/View;)Z
    .locals 1
    .parameter

    .prologue
    .line 2602
    sget-object v0, Lgs;->a:Lhc;

    invoke-interface {v0, p0}, Lhc;->x(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static y(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 2623
    sget-object v0, Lgs;->a:Lhc;

    invoke-interface {v0, p0}, Lhc;->y(Landroid/view/View;)V

    .line 2624
    return-void
.end method

.method public static z(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 2676
    sget-object v0, Lgs;->a:Lhc;

    invoke-interface {v0, p0}, Lhc;->z(Landroid/view/View;)V

    .line 2677
    return-void
.end method
