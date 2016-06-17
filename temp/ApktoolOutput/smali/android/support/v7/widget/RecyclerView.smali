.class public Landroid/support/v7/widget/RecyclerView;
.super Landroid/view/ViewGroup;
.source "RecyclerView.java"

# interfaces
.implements Lga;
.implements Lgn;


# static fields
.field private static final ak:Landroid/view/animation/Interpolator;

.field private static final q:Z

.field private static final r:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:I

.field private F:Z

.field private final G:Z

.field private final H:Landroid/view/accessibility/AccessibilityManager;

.field private I:I

.field private J:I

.field private K:I

.field private L:Landroid/view/VelocityTracker;

.field private M:I

.field private N:I

.field private O:I

.field private P:I

.field private Q:I

.field private final R:I

.field private final S:I

.field private T:F

.field private final U:Luw;

.field private V:Lup;

.field private W:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lup;",
            ">;"
        }
    .end annotation
.end field

.field public final a:Lur;

.field private aa:Lul;

.field private ab:Z

.field private ac:Luy;

.field private ad:Ldd;

.field private final ae:[I

.field private final af:Lgb;

.field private final ag:[I

.field private final ah:[I

.field private final ai:[I

.field private aj:Ljava/lang/Runnable;

.field public b:Lrx;

.field public c:Lsa;

.field public d:Luh;

.field public e:Luo;

.field public final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lum;",
            ">;"
        }
    .end annotation
.end field

.field public g:Z

.field public h:Z

.field public i:Lkx;

.field public j:Lkx;

.field public k:Lkx;

.field public l:Lkx;

.field public m:Luk;

.field public final n:Luv;

.field public o:Z

.field public p:Z

.field private final s:Lus;

.field private t:Landroid/support/v7/widget/RecyclerView$SavedState;

.field private u:Z

.field private final v:Ljava/lang/Runnable;

.field private final w:Landroid/graphics/Rect;

.field private x:Ldd;

.field private final y:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ldd;",
            ">;"
        }
    .end annotation
.end field

.field private z:Ldd;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 152
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-eq v0, v3, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-eq v0, v3, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x14

    if-ne v0, v3, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Landroid/support/v7/widget/RecyclerView;->q:Z

    .line 231
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v0, v1

    const-class v1, Landroid/util/AttributeSet;

    aput-object v1, v0, v2

    const/4 v1, 0x2

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    sput-object v0, Landroid/support/v7/widget/RecyclerView;->r:[Ljava/lang/Class;

    .line 392
    new-instance v0, Lug;

    invoke-direct {v0}, Lug;-><init>()V

    sput-object v0, Landroid/support/v7/widget/RecyclerView;->ak:Landroid/view/animation/Interpolator;

    return-void

    :cond_1
    move v0, v1

    .line 152
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 400
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 401
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 404
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 405
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x2e

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 408
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 234
    new-instance v0, Lus;

    invoke-direct {v0, p0, v2}, Lus;-><init>(Landroid/support/v7/widget/RecyclerView;B)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->s:Lus;

    .line 236
    new-instance v0, Lur;

    invoke-direct {v0, p0}, Lur;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Lur;

    .line 256
    new-instance v0, Lue;

    invoke-direct {v0, p0}, Lue;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->v:Ljava/lang/Runnable;

    .line 281
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->w:Landroid/graphics/Rect;

    .line 285
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Ljava/util/ArrayList;

    .line 286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->y:Ljava/util/ArrayList;

    .line 305
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->h:Z

    .line 315
    iput v2, p0, Landroid/support/v7/widget/RecyclerView;->I:I

    .line 319
    new-instance v0, Lsd;

    invoke-direct {v0}, Lsd;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Luk;

    .line 344
    iput v2, p0, Landroid/support/v7/widget/RecyclerView;->J:I

    .line 345
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->K:I

    .line 355
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->T:F

    .line 357
    new-instance v0, Luw;

    invoke-direct {v0, p0}, Luw;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->U:Luw;

    .line 359
    new-instance v0, Luv;

    invoke-direct {v0}, Luv;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Luv;

    .line 365
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->o:Z

    .line 366
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->p:Z

    .line 367
    new-instance v0, Lul;

    invoke-direct {v0, p0, v2}, Lul;-><init>(Landroid/support/v7/widget/RecyclerView;B)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->aa:Lul;

    .line 369
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->ab:Z

    .line 375
    new-array v0, v4, [I

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ae:[I

    .line 378
    new-array v0, v4, [I

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ag:[I

    .line 379
    new-array v0, v4, [I

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ah:[I

    .line 380
    new-array v0, v4, [I

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ai:[I

    .line 382
    new-instance v0, Luf;

    invoke-direct {v0, p0}, Luf;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->aj:Ljava/lang/Runnable;

    .line 409
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->setFocusableInTouchMode(Z)V

    .line 410
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 411
    const/16 v3, 0x10

    if-lt v0, v3, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->G:Z

    .line 413
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 414
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Landroid/support/v7/widget/RecyclerView;->Q:I

    .line 415
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Landroid/support/v7/widget/RecyclerView;->R:I

    .line 416
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->S:I

    .line 417
    invoke-static {p0}, Lgs;->a(Landroid/view/View;)I

    move-result v0

    if-ne v0, v4, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setWillNotDraw(Z)V

    .line 419
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Luk;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->aa:Lul;

    iput-object v3, v0, Luk;->h:Lul;

    .line 420
    new-instance v0, Lrx;

    new-instance v3, Lry;

    invoke-direct {v3, p0}, Lry;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-direct {v0, v3}, Lrx;-><init>(Lry;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Lrx;

    .line 421
    new-instance v0, Lsa;

    new-instance v3, Lsc;

    invoke-direct {v3, p0}, Lsc;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-direct {v0, v3}, Lsa;-><init>(Lsc;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Lsa;

    .line 423
    invoke-static {p0}, Lgs;->e(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    .line 425
    invoke-static {p0, v1}, Lgs;->c(Landroid/view/View;I)V

    .line 428
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "accessibility"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/view/accessibility/AccessibilityManager;

    .line 430
    new-instance v0, Luy;

    invoke-direct {v0, p0}, Luy;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setAccessibilityDelegateCompat(Luy;)V

    .line 432
    if-eqz p2, :cond_1

    .line 433
    sget-object v0, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView:[I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 436
    sget v3, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView_layoutManager:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 437
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 438
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :goto_2
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :goto_3
    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v3, Luo;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_6

    move-result-object v5

    const/4 v3, 0x0

    :try_start_1
    sget-object v0, Landroid/support/v7/widget/RecyclerView;->r:[Ljava/lang/Class;

    invoke-virtual {v5, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v0, v6

    const/4 v6, 0x1

    aput-object p2, v0, v6

    const/4 v6, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v0, v6

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v0, v6
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_6

    move-object v3, v4

    :goto_4
    const/4 v4, 0x1

    :try_start_2
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luo;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Luo;)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_6

    .line 441
    :cond_1
    new-instance v0, Lgb;

    invoke-direct {v0, p0}, Lgb;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->af:Lgb;

    .line 442
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 443
    return-void

    :cond_2
    move v0, v2

    .line 411
    goto/16 :goto_0

    :cond_3
    move v0, v2

    .line 417
    goto/16 :goto_1

    .line 438
    :cond_4
    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object v2, v0

    goto :goto_2

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_2

    :cond_6
    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_6

    move-result-object v0

    goto :goto_3

    :catch_0
    move-exception v0

    const/4 v4, 0x0

    :try_start_4
    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v5, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_6

    move-result-object v0

    move-object v8, v3

    move-object v3, v0

    move-object v0, v8

    goto :goto_4

    :catch_1
    move-exception v1

    :try_start_5
    invoke-virtual {v1, v0}, Ljava/lang/NoSuchMethodException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Error creating LayoutManager "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_6

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Unable to find LayoutManager "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Could not instantiate the LayoutManager: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_4
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Could not instantiate the LayoutManager: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_5
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Cannot access non-public constructor "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_6
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Class is not a LayoutManager "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static synthetic a(Landroid/support/v7/widget/RecyclerView;Lux;)I
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 139
    iget v1, p1, Lux;->h:I

    and-int/lit16 v1, v1, 0x20c

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_0

    invoke-virtual {p1}, Lux;->n()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_0
    move v1, v2

    :cond_1
    :goto_1
    return v1

    :cond_2
    move v1, v0

    goto :goto_0

    :cond_3
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->b:Lrx;

    iget v1, p1, Lux;->b:I

    iget-object v3, v4, Lrx;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v0

    :goto_2
    if-ge v3, v5, :cond_1

    iget-object v0, v4, Lrx;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrz;

    iget v6, v0, Lrz;->a:I

    packed-switch v6, :pswitch_data_0

    :cond_4
    :goto_3
    :pswitch_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :pswitch_1
    iget v6, v0, Lrz;->b:I

    if-gt v6, v1, :cond_4

    iget v0, v0, Lrz;->c:I

    add-int/2addr v1, v0

    goto :goto_3

    :pswitch_2
    iget v6, v0, Lrz;->b:I

    if-gt v6, v1, :cond_4

    iget v6, v0, Lrz;->b:I

    iget v7, v0, Lrz;->c:I

    add-int/2addr v6, v7

    if-le v6, v1, :cond_5

    move v1, v2

    goto :goto_1

    :cond_5
    iget v0, v0, Lrz;->c:I

    sub-int/2addr v1, v0

    goto :goto_3

    :pswitch_3
    iget v6, v0, Lrz;->b:I

    if-ne v6, v1, :cond_6

    iget v1, v0, Lrz;->c:I

    goto :goto_3

    :cond_6
    iget v6, v0, Lrz;->b:I

    if-ge v6, v1, :cond_7

    add-int/lit8 v1, v1, -0x1

    :cond_7
    iget v0, v0, Lrz;->c:I

    if-gt v0, v1, :cond_4

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static synthetic a(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->detachViewFromParent(I)V

    return-void
.end method

.method public static synthetic a(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 139
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->c(II)V

    return-void
.end method

.method public static synthetic a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 139
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Lux;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->d:Luh;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->d:Luh;

    invoke-virtual {v1, v0}, Luh;->b(Lux;)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 139
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter

    .prologue
    const/high16 v3, 0x3f00

    .line 2256
    invoke-static {p1}, Lfv;->b(Landroid/view/MotionEvent;)I

    move-result v0

    .line 2257
    invoke-static {p1, v0}, Lfv;->b(Landroid/view/MotionEvent;I)I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/RecyclerView;->K:I

    if-ne v1, v2, :cond_0

    .line 2259
    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 2260
    :goto_0
    invoke-static {p1, v0}, Lfv;->b(Landroid/view/MotionEvent;I)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->K:I

    .line 2261
    invoke-static {p1, v0}, Lfv;->c(Landroid/view/MotionEvent;I)F

    move-result v1

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->O:I

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->M:I

    .line 2262
    invoke-static {p1, v0}, Lfv;->d(Landroid/view/MotionEvent;I)F

    move-result v0

    add-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->P:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->N:I

    .line 2264
    :cond_0
    return-void

    .line 2259
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ldv;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldv",
            "<",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2860
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Luv;

    iget-object v3, v0, Luv;->e:Ljava/util/List;

    .line 2861
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_3

    .line 2862
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2863
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Lux;

    move-result-object v4

    .line 2864
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->n:Luv;

    iget-object v1, v1, Luv;->b:Ldv;

    invoke-virtual {v1, v4}, Ldv;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lun;

    .line 2865
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->n:Luv;

    iget-boolean v5, v5, Luv;->j:Z

    if-nez v5, :cond_0

    .line 2866
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->n:Luv;

    iget-object v5, v5, Luv;->c:Ldv;

    invoke-virtual {v5, v4}, Ldv;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2868
    :cond_0
    invoke-virtual {p1, v0}, Ldv;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 2869
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->e:Luo;

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->a:Lur;

    invoke-virtual {v1, v0, v4}, Luo;->a(Landroid/view/View;Lur;)V

    .line 2861
    :goto_1
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    .line 2872
    :cond_1
    if-eqz v1, :cond_2

    .line 2873
    invoke-direct {p0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Lun;)V

    goto :goto_1

    .line 2876
    :cond_2
    new-instance v1, Lun;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    invoke-direct {v1, v4, v5, v6}, Lun;-><init>(Lux;II)V

    invoke-direct {p0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Lun;)V

    goto :goto_1

    .line 2880
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 2881
    return-void
.end method

.method private a(Lun;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 2910
    iget-object v0, p1, Lun;->a:Lux;

    iget-object v0, v0, Lux;->a:Landroid/view/View;

    .line 2911
    iget-object v1, p1, Lun;->a:Lux;

    invoke-direct {p0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Lux;)V

    .line 2912
    iget v2, p1, Lun;->b:I

    .line 2913
    iget v3, p1, Lun;->c:I

    .line 2914
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 2915
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    .line 2916
    if-ne v2, v4, :cond_0

    if-eq v3, v5, :cond_2

    .line 2917
    :cond_0
    iget-object v1, p1, Lun;->a:Lux;

    invoke-virtual {v1, v6}, Lux;->a(Z)V

    .line 2918
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v1, v4

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {v0, v4, v5, v1, v6}, Landroid/view/View;->layout(IIII)V

    .line 2925
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Luk;

    iget-object v1, p1, Lun;->a:Lux;

    invoke-virtual/range {v0 .. v5}, Luk;->a(Lux;IIII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2927
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->u()V

    .line 2939
    :cond_1
    :goto_0
    return-void

    .line 2934
    :cond_2
    iget-object v0, p1, Lun;->a:Lux;

    invoke-virtual {v0, v6}, Lux;->a(Z)V

    .line 2935
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Luk;

    iget-object v1, p1, Lun;->a:Lux;

    invoke-virtual {v0, v1}, Luk;->a(Lux;)Z

    .line 2936
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->u()V

    goto :goto_0
.end method

.method private a(Lux;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, -0x1

    const/4 v1, 0x1

    .line 998
    iget-object v2, p1, Lux;->a:Landroid/view/View;

    .line 999
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    move v0, v1

    .line 1000
    :goto_0
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->a:Lur;

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/view/View;)Lux;

    move-result-object v4

    invoke-virtual {v3, v4}, Lur;->b(Lux;)V

    .line 1001
    invoke-virtual {p1}, Lux;->p()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1003
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Lsa;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v5, v3, v1}, Lsa;->a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 1009
    :goto_1
    return-void

    .line 999
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1004
    :cond_1
    if-nez v0, :cond_2

    .line 1005
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Lsa;

    invoke-virtual {v0, v2, v5, v1}, Lsa;->a(Landroid/view/View;IZ)V

    goto :goto_1

    .line 1007
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Lsa;

    iget-object v1, v0, Lsa;->a:Lsc;

    invoke-virtual {v1, v2}, Lsc;->a(Landroid/view/View;)I

    move-result v1

    if-gez v1, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "view is not a child, cannot hide "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v3, v0, Lsa;->b:Lsb;

    invoke-virtual {v3, v1}, Lsb;->a(I)V

    iget-object v0, v0, Lsa;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private a(IILandroid/view/MotionEvent;)Z
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1342
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 1343
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 1345
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->l()V

    .line 1346
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->d:Luh;

    if-eqz v4, :cond_6

    .line 1347
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->b()V

    .line 1348
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->r()V

    .line 1349
    const-string v4, "RV Scroll"

    invoke-static {v4}, Ld;->a(Ljava/lang/String;)V

    .line 1350
    if-eqz p1, :cond_0

    .line 1351
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->e:Luo;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->a:Lur;

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->n:Luv;

    invoke-virtual {v2, p1, v3, v4}, Luo;->a(ILur;Luv;)I

    move-result v2

    .line 1352
    sub-int v3, p1, v2

    .line 1354
    :cond_0
    if-eqz p2, :cond_1

    .line 1355
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Luo;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->a:Lur;

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->n:Luv;

    invoke-virtual {v0, p2, v1, v4}, Luo;->b(ILur;Luv;)I

    move-result v0

    .line 1356
    sub-int v1, p2, v0

    .line 1358
    :cond_1
    invoke-static {}, Ld;->a()V

    .line 1359
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->g()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1361
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->c:Lsa;

    invoke-virtual {v4}, Lsa;->a()I

    move-result v6

    .line 1362
    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v6, :cond_5

    .line 1363
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->c:Lsa;

    invoke-virtual {v4, v5}, Lsa;->b(I)Landroid/view/View;

    move-result-object v7

    .line 1364
    invoke-virtual {p0, v7}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/view/View;)Lux;

    move-result-object v4

    .line 1365
    if-eqz v4, :cond_3

    iget-object v8, v4, Lux;->g:Lux;

    if-eqz v8, :cond_3

    .line 1366
    iget-object v4, v4, Lux;->g:Lux;

    .line 1367
    if-eqz v4, :cond_4

    iget-object v4, v4, Lux;->a:Landroid/view/View;

    .line 1368
    :goto_1
    if-eqz v4, :cond_3

    .line 1369
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 1370
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    .line 1371
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v9

    if-ne v8, v9, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v9

    if-eq v7, v9, :cond_3

    .line 1372
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v9, v8

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v10, v7

    invoke-virtual {v4, v8, v7, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 1362
    :cond_3
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_0

    .line 1367
    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    .line 1380
    :cond_5
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->s()V

    .line 1381
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/support/v7/widget/RecyclerView;->a(Z)V

    :cond_6
    move v4, v1

    move v1, v2

    move v2, v0

    .line 1383
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1384
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 1387
    :cond_7
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->ag:[I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/RecyclerView;->dispatchNestedScroll(IIII[I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1389
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->O:I

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->ag:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    sub-int/2addr v0, v3

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->O:I

    .line 1390
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->P:I

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->ag:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    sub-int/2addr v0, v3

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->P:I

    .line 1391
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ag:[I

    const/4 v3, 0x0

    aget v0, v0, v3

    int-to-float v0, v0

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->ag:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    int-to-float v3, v3

    invoke-virtual {p3, v0, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1392
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ai:[I

    const/4 v3, 0x0

    aget v4, v0, v3

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->ag:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    add-int/2addr v4, v5

    aput v4, v0, v3

    .line 1393
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ai:[I

    const/4 v3, 0x1

    aget v4, v0, v3

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->ag:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    add-int/2addr v4, v5

    aput v4, v0, v3

    .line 1400
    :cond_8
    :goto_2
    if-nez v1, :cond_9

    if-eqz v2, :cond_a

    .line 1401
    :cond_9
    invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/RecyclerView;->b(II)V

    .line 1403
    :cond_a
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->awakenScrollBars()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1404
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 1406
    :cond_b
    if-nez v1, :cond_c

    if-eqz v2, :cond_14

    :cond_c
    const/4 v0, 0x1

    :goto_3
    return v0

    .line 1394
    :cond_d
    invoke-static {p0}, Lgs;->a(Landroid/view/View;)I

    move-result v0

    const/4 v5, 0x2

    if-eq v0, v5, :cond_8

    .line 1395
    if-eqz p3, :cond_11

    .line 1396
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    int-to-float v3, v3

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    int-to-float v4, v4

    const/4 v0, 0x0

    const/4 v7, 0x0

    cmpg-float v7, v3, v7

    if-gez v7, :cond_12

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->c()V

    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->i:Lkx;

    neg-float v8, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    const/high16 v9, 0x3f80

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v6, v10

    sub-float v6, v9, v6

    invoke-virtual {v7, v8, v6}, Lkx;->a(FF)Z

    move-result v6

    if-eqz v6, :cond_e

    const/4 v0, 0x1

    :cond_e
    :goto_4
    const/4 v6, 0x0

    cmpg-float v6, v4, v6

    if-gez v6, :cond_13

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->e()V

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->j:Lkx;

    neg-float v7, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v5, v8

    invoke-virtual {v6, v7, v5}, Lkx;->a(FF)Z

    move-result v5

    if-eqz v5, :cond_f

    const/4 v0, 0x1

    :cond_f
    :goto_5
    if-nez v0, :cond_10

    const/4 v0, 0x0

    cmpl-float v0, v3, v0

    if-nez v0, :cond_10

    const/4 v0, 0x0

    cmpl-float v0, v4, v0

    if-eqz v0, :cond_11

    :cond_10
    invoke-static {p0}, Lgs;->d(Landroid/view/View;)V

    .line 1398
    :cond_11
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->c(II)V

    goto :goto_2

    .line 1396
    :cond_12
    const/4 v7, 0x0

    cmpl-float v7, v3, v7

    if-lez v7, :cond_e

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->d()V

    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->k:Lkx;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float v8, v3, v8

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v6, v9

    invoke-virtual {v7, v8, v6}, Lkx;->a(FF)Z

    move-result v6

    if-eqz v6, :cond_e

    const/4 v0, 0x1

    goto :goto_4

    :cond_13
    const/4 v6, 0x0

    cmpl-float v6, v4, v6

    if-lez v6, :cond_f

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->f()V

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->l:Lkx;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float v7, v4, v7

    const/high16 v8, 0x3f80

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v5, v9

    sub-float v5, v8, v5

    invoke-virtual {v6, v7, v5}, Lkx;->a(FF)Z

    move-result v5

    if-eqz v5, :cond_f

    const/4 v0, 0x1

    goto :goto_5

    .line 1406
    :cond_14
    const/4 v0, 0x0

    goto/16 :goto_3
.end method

.method public static synthetic a(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1
    .parameter

    .prologue
    .line 139
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->g:Z

    return v0
.end method

.method public static b(Landroid/view/View;)Lux;
    .locals 1
    .parameter

    .prologue
    .line 3338
    if-nez p0, :cond_0

    .line 3339
    const/4 v0, 0x0

    .line 3341
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->c:Lux;

    goto :goto_0
.end method

.method public static synthetic b(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 139
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->d(II)V

    return-void
.end method

.method public static synthetic b(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 139
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->e(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1
    .parameter

    .prologue
    .line 139
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->h:Z

    return v0
.end method

.method public static c(Landroid/view/View;)I
    .locals 1
    .parameter

    .prologue
    .line 3360
    invoke-static {p0}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Lux;

    move-result-object v0

    .line 3361
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lux;->e()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private c(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1712
    const/4 v0, 0x0

    .line 1713
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->i:Lkx;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->i:Lkx;

    invoke-virtual {v1}, Lkx;->a()Z

    move-result v1

    if-nez v1, :cond_0

    if-lez p1, :cond_0

    .line 1714
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->i:Lkx;

    invoke-virtual {v0}, Lkx;->c()Z

    move-result v0

    .line 1716
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->k:Lkx;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->k:Lkx;

    invoke-virtual {v1}, Lkx;->a()Z

    move-result v1

    if-nez v1, :cond_1

    if-gez p1, :cond_1

    .line 1717
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->k:Lkx;

    invoke-virtual {v1}, Lkx;->c()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1719
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->j:Lkx;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->j:Lkx;

    invoke-virtual {v1}, Lkx;->a()Z

    move-result v1

    if-nez v1, :cond_2

    if-lez p2, :cond_2

    .line 1720
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->j:Lkx;

    invoke-virtual {v1}, Lkx;->c()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1722
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->l:Lkx;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->l:Lkx;

    invoke-virtual {v1}, Lkx;->a()Z

    move-result v1

    if-nez v1, :cond_3

    if-gez p2, :cond_3

    .line 1723
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->l:Lkx;

    invoke-virtual {v1}, Lkx;->c()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1725
    :cond_3
    if-eqz v0, :cond_4

    .line 1726
    invoke-static {p0}, Lgs;->d(Landroid/view/View;)V

    .line 1728
    :cond_4
    return-void
.end method

.method public static synthetic c(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 139
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->setMeasuredDimension(II)V

    return-void
.end method

.method public static synthetic c(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1
    .parameter

    .prologue
    .line 139
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->D:Z

    return v0
.end method

.method public static synthetic c(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 139
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->b()V

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->c:Lsa;

    iget-object v3, v2, Lsa;->a:Lsc;

    invoke-virtual {v3, p1}, Lsc;->a(Landroid/view/View;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    iget-object v2, v2, Lsa;->c:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :goto_0
    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Lux;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->a:Lur;

    invoke-virtual {v3, v2}, Lur;->b(Lux;)V

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->a:Lur;

    invoke-virtual {v3, v2}, Lur;->a(Lux;)V

    :cond_0
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Z)V

    return v0

    :cond_1
    iget-object v4, v2, Lsa;->b:Lsb;

    invoke-virtual {v4, v3}, Lsb;->b(I)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v2, Lsa;->b:Lsb;

    invoke-virtual {v4, v3}, Lsb;->c(I)Z

    iget-object v4, v2, Lsa;->c:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v2, v2, Lsa;->a:Lsc;

    invoke-virtual {v2, v3}, Lsc;->a(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private d(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 2353
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 2354
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 2355
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 2356
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 2358
    sparse-switch v2, :sswitch_data_0

    .line 2368
    invoke-static {p0}, Lgs;->o(Landroid/view/View;)I

    move-result v1

    .line 2372
    :sswitch_0
    sparse-switch v3, :sswitch_data_1

    .line 2379
    invoke-static {p0}, Lgs;->p(Landroid/view/View;)I

    move-result v0

    .line 2383
    :sswitch_1
    invoke-virtual {p0, v1, v0}, Landroid/support/v7/widget/RecyclerView;->setMeasuredDimension(II)V

    .line 2384
    return-void

    .line 2358
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x40000000 -> :sswitch_0
    .end sparse-switch

    .line 2372
    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method public static synthetic d(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1
    .parameter

    .prologue
    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->ab:Z

    return v0
.end method

.method public static synthetic e(Landroid/support/v7/widget/RecyclerView;)Luo;
    .locals 1
    .parameter

    .prologue
    .line 139
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Luo;

    return-object v0
.end method

.method private e(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 5448
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Lux;

    move-result-object v0

    .line 5449
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->d:Luh;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 5451
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->d:Luh;

    invoke-virtual {v1, v0}, Luh;->c(Lux;)V

    .line 5453
    :cond_0
    return-void
.end method

.method private e(II)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2815
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->c:Lsa;

    invoke-virtual {v2}, Lsa;->a()I

    move-result v3

    .line 2816
    if-nez v3, :cond_2

    .line 2817
    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    move v0, v1

    .line 2829
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v2, v0

    .line 2819
    :goto_1
    if-ge v2, v3, :cond_1

    .line 2820
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->c:Lsa;

    invoke-virtual {v4, v2}, Lsa;->b(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Lux;

    move-result-object v4

    .line 2821
    invoke-virtual {v4}, Lux;->b()Z

    move-result v5

    if-nez v5, :cond_4

    .line 2822
    invoke-virtual {v4}, Lux;->d()I

    move-result v4

    .line 2825
    if-lt v4, p1, :cond_3

    if-le v4, p2, :cond_4

    :cond_3
    move v0, v1

    .line 2826
    goto :goto_0

    .line 2819
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static synthetic f(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->l()V

    return-void
.end method

.method public static synthetic g(Landroid/support/v7/widget/RecyclerView;)Luh;
    .locals 1
    .parameter

    .prologue
    .line 139
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Luh;

    return-object v0
.end method

.method private getScrollFactor()F
    .locals 4

    .prologue
    .line 2300
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->T:F

    const/4 v1, 0x1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 2301
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 2302
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101004d

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2304
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->T:F

    .line 2311
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->T:F

    :goto_0
    return v0

    .line 2307
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic h(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->r()V

    return-void
.end method

.method public static synthetic i(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1
    .parameter

    .prologue
    .line 139
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->g()Z

    move-result v0

    return v0
.end method

.method public static synthetic j()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Landroid/support/v7/widget/RecyclerView;->ak:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public static synthetic j(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->s()V

    return-void
.end method

.method public static synthetic k(Landroid/support/v7/widget/RecyclerView;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 139
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic k()Z
    .locals 1

    .prologue
    .line 139
    sget-boolean v0, Landroid/support/v7/widget/RecyclerView;->q:Z

    return v0
.end method

.method private l()V
    .locals 1

    .prologue
    .line 1327
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->v:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1328
    return-void
.end method

.method public static synthetic l(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1
    .parameter

    .prologue
    .line 139
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->awakenScrollBars()Z

    move-result v0

    return v0
.end method

.method private m()V
    .locals 1

    .prologue
    .line 1633
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 1634
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->n()V

    .line 1635
    return-void
.end method

.method public static synthetic m(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1
    .parameter

    .prologue
    .line 139
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    return-void
.end method

.method private n()V
    .locals 2

    .prologue
    .line 1641
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->U:Luw;

    iget-object v1, v0, Luw;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, v0, Luw;->c:Llo;

    invoke-virtual {v0}, Llo;->h()V

    .line 1642
    return-void
.end method

.method public static synthetic n(Landroid/support/v7/widget/RecyclerView;)V
    .locals 6
    .parameter

    .prologue
    const/16 v5, 0x200

    const/4 v0, 0x0

    .line 139
    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->h:Z

    if-nez v1, :cond_3

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->h:Z

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->c:Lsa;

    invoke-virtual {v1}, Lsa;->b()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->c:Lsa;

    invoke-virtual {v3, v1}, Lsa;->c(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Lux;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lux;->b()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3, v5}, Lux;->a(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->a:Lur;

    iget-object v1, v2, Lur;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_3

    iget-object v0, v2, Lur;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lux;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v5}, Lux;->a(I)V

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    return-void
.end method

.method private o()V
    .locals 2

    .prologue
    .line 1701
    const/4 v0, 0x0

    .line 1702
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->i:Lkx;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->i:Lkx;

    invoke-virtual {v0}, Lkx;->c()Z

    move-result v0

    .line 1703
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->j:Lkx;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->j:Lkx;

    invoke-virtual {v1}, Lkx;->c()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1704
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->k:Lkx;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->k:Lkx;

    invoke-virtual {v1}, Lkx;->c()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1705
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->l:Lkx;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->l:Lkx;

    invoke-virtual {v1}, Lkx;->c()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1706
    :cond_3
    if-eqz v0, :cond_4

    .line 1707
    invoke-static {p0}, Lgs;->d(Landroid/view/View;)V

    .line 1709
    :cond_4
    return-void
.end method

.method public static synthetic o(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1
    .parameter

    .prologue
    .line 139
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->G:Z

    return v0
.end method

.method private p()V
    .locals 1

    .prologue
    .line 1806
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Lkx;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->j:Lkx;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Lkx;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->i:Lkx;

    .line 1807
    return-void
.end method

.method public static synthetic p(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1
    .parameter

    .prologue
    .line 139
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->B:Z

    return v0
.end method

.method private q()V
    .locals 1

    .prologue
    .line 2247
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->L:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2248
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->L:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 2250
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->stopNestedScroll()V

    .line 2251
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->o()V

    .line 2252
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 2253
    return-void
.end method

.method public static synthetic q(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1
    .parameter

    .prologue
    .line 139
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->A:Z

    return v0
.end method

.method public static synthetic r(Landroid/support/v7/widget/RecyclerView;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 139
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->v:Ljava/lang/Runnable;

    return-object v0
.end method

.method private r()V
    .locals 1

    .prologue
    .line 2417
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->I:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->I:I

    .line 2418
    return-void
.end method

.method private s()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2421
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->I:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->I:I

    .line 2422
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->I:I

    if-gtz v0, :cond_0

    .line 2427
    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->I:I

    .line 2428
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->E:I

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->E:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    const/16 v2, 0x800

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    invoke-static {v1, v0}, Lix;->a(Landroid/view/accessibility/AccessibilityEvent;I)V

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2430
    :cond_0
    return-void
.end method

.method public static synthetic s(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1
    .parameter

    .prologue
    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->F:Z

    return v0
.end method

.method private setScrollState(I)V
    .locals 2
    .parameter

    .prologue
    .line 1103
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->J:I

    if-ne p1, v0, :cond_1

    .line 1115
    :cond_0
    return-void

    .line 1110
    :cond_1
    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->J:I

    .line 1111
    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    .line 1112
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->n()V

    .line 1114
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Luo;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Luo;

    invoke-virtual {v0, p1}, Luo;->f(I)V

    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->V:Lup;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->V:Lup;

    invoke-virtual {v0, p0, p1}, Lup;->a(Landroid/support/v7/widget/RecyclerView;I)V

    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->W:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->W:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->W:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lup;

    invoke-virtual {v0, p0, p1}, Lup;->a(Landroid/support/v7/widget/RecyclerView;I)V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method public static synthetic t(Landroid/support/v7/widget/RecyclerView;)Landroid/view/accessibility/AccessibilityManager;
    .locals 1
    .parameter

    .prologue
    .line 139
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/view/accessibility/AccessibilityManager;

    return-object v0
.end method

.method private t()Z
    .locals 1

    .prologue
    .line 2444
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->I:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic u(Landroid/support/v7/widget/RecyclerView;)Luy;
    .locals 1
    .parameter

    .prologue
    .line 139
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ac:Luy;

    return-object v0
.end method

.method private u()V
    .locals 1

    .prologue
    .line 2500
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->ab:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->A:Z

    if-eqz v0, :cond_0

    .line 2501
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->aj:Ljava/lang/Runnable;

    invoke-static {p0, v0}, Lgs;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 2502
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->ab:Z

    .line 2504
    :cond_0
    return-void
.end method

.method public static synthetic v(Landroid/support/v7/widget/RecyclerView;)Ldd;
    .locals 1
    .parameter

    .prologue
    .line 139
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->x:Ldd;

    return-object v0
.end method

.method private v()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2517
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->h:Z

    if-eqz v0, :cond_0

    .line 2520
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Lrx;

    invoke-virtual {v0}, Lrx;->a()V

    .line 2521
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->x()V

    .line 2522
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Luo;

    invoke-virtual {v0, p0}, Luo;->a(Landroid/support/v7/widget/RecyclerView;)V

    .line 2527
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Luk;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Luo;

    invoke-virtual {v0}, Luo;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2528
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Lrx;

    invoke-virtual {v0}, Lrx;->b()V

    .line 2532
    :goto_0
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->g()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_2
    move v0, v2

    .line 2534
    :goto_1
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->n:Luv;

    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->g:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->m:Luk;

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->h:Z

    if-nez v3, :cond_3

    if-eqz v0, :cond_6

    :cond_3
    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->h:Z

    if-nez v3, :cond_6

    move v3, v2

    :goto_2
    iput-boolean v3, v4, Luv;->k:Z

    .line 2538
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->n:Luv;

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->n:Luv;

    iget-boolean v4, v4, Luv;->k:Z

    if-eqz v4, :cond_8

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->h:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Luk;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Luo;

    invoke-virtual {v0}, Luo;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v2

    :goto_3
    if-eqz v0, :cond_8

    :goto_4
    iput-boolean v2, v3, Luv;->l:Z

    .line 2541
    return-void

    .line 2530
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Lrx;

    invoke-virtual {v0}, Lrx;->e()V

    goto :goto_0

    :cond_5
    move v0, v1

    .line 2532
    goto :goto_1

    :cond_6
    move v3, v1

    .line 2534
    goto :goto_2

    :cond_7
    move v0, v1

    .line 2538
    goto :goto_3

    :cond_8
    move v2, v1

    goto :goto_4
.end method

.method private w()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 3122
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Lsa;

    invoke-virtual {v0}, Lsa;->b()I

    move-result v2

    move v0, v1

    .line 3123
    :goto_0
    if-ge v0, v2, :cond_1

    .line 3124
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->c:Lsa;

    invoke-virtual {v3, v0}, Lsa;->c(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Lux;

    move-result-object v3

    .line 3125
    invoke-virtual {v3}, Lux;->b()Z

    move-result v4

    if-nez v4, :cond_0

    .line 3126
    invoke-virtual {v3}, Lux;->a()V

    .line 3123
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3129
    :cond_1
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->a:Lur;

    iget-object v0, v3, Lur;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_2

    iget-object v0, v3, Lur;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lux;

    invoke-virtual {v0}, Lux;->a()V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    iget-object v0, v3, Lur;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v1

    :goto_2
    if-ge v2, v4, :cond_3

    iget-object v0, v3, Lur;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lux;

    invoke-virtual {v0}, Lux;->a()V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_3
    iget-object v0, v3, Lur;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, v3, Lur;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_3
    if-ge v1, v2, :cond_4

    iget-object v0, v3, Lur;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lux;

    invoke-virtual {v0}, Lux;->a()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 3130
    :cond_4
    return-void
.end method

.method static synthetic w(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1
    .parameter

    .prologue
    .line 139
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->u:Z

    return v0
.end method

.method private x()V
    .locals 4

    .prologue
    .line 3295
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Lsa;

    invoke-virtual {v0}, Lsa;->b()I

    move-result v1

    .line 3296
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 3297
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->c:Lsa;

    invoke-virtual {v2, v0}, Lsa;->c(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Lux;

    move-result-object v2

    .line 3298
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lux;->b()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3299
    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lux;->a(I)V

    .line 3296
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3302
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->i()V

    .line 3303
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Lur;

    invoke-virtual {v0}, Lur;->b()V

    .line 3304
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Lux;
    .locals 3
    .parameter

    .prologue
    .line 3329
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 3330
    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    .line 3331
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "View "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a direct child of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3334
    :cond_0
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Lux;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 1264
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->m()V

    .line 1265
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Luo;

    if-nez v0, :cond_0

    .line 1272
    :goto_0
    return-void

    .line 1270
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Luo;

    invoke-virtual {v0}, Luo;->h()V

    .line 1271
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->awakenScrollBars()Z

    goto :goto_0
.end method

.method public final a(II)V
    .locals 13
    .parameter
    .parameter

    .prologue
    const/high16 v12, 0x3f80

    const/4 v1, 0x0

    .line 1564
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Luo;

    if-nez v0, :cond_1

    .line 1578
    :cond_0
    :goto_0
    return-void

    .line 1569
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Luo;

    invoke-virtual {v0}, Luo;->d()Z

    move-result v0

    if-nez v0, :cond_9

    move v3, v1

    .line 1572
    :goto_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Luo;

    invoke-virtual {v0}, Luo;->e()Z

    move-result v0

    if-nez v0, :cond_8

    move v4, v1

    .line 1575
    :goto_2
    if-nez v3, :cond_2

    if-eqz v4, :cond_0

    .line 1576
    :cond_2
    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->U:Luw;

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-le v5, v6, :cond_4

    const/4 v0, 0x1

    :goto_3
    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-int v8, v8

    mul-int v2, v3, v3

    mul-int v9, v4, v4

    add-int/2addr v2, v9

    int-to-double v10, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-int v9, v10

    if-eqz v0, :cond_5

    iget-object v2, v7, Luw;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v2

    :goto_4
    div-int/lit8 v10, v2, 0x2

    int-to-float v9, v9

    mul-float/2addr v9, v12

    int-to-float v11, v2

    div-float/2addr v9, v11

    invoke-static {v12, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    int-to-float v11, v10

    int-to-float v10, v10

    invoke-static {v9}, Luw;->a(F)F

    move-result v9

    mul-float/2addr v9, v10

    add-float/2addr v9, v11

    if-lez v8, :cond_6

    const/high16 v0, 0x447a

    int-to-float v2, v8

    div-float v2, v9, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    :goto_5
    const/16 v2, 0x7d0

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    sget-object v0, Landroid/support/v7/widget/RecyclerView;->ak:Landroid/view/animation/Interpolator;

    iget-object v2, v7, Luw;->d:Landroid/view/animation/Interpolator;

    if-eq v2, v0, :cond_3

    iput-object v0, v7, Luw;->d:Landroid/view/animation/Interpolator;

    iget-object v2, v7, Luw;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Llo;->a(Landroid/content/Context;Landroid/view/animation/Interpolator;)Llo;

    move-result-object v0

    iput-object v0, v7, Luw;->c:Llo;

    :cond_3
    iget-object v0, v7, Luw;->e:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    iput v1, v7, Luw;->b:I

    iput v1, v7, Luw;->a:I

    iget-object v0, v7, Luw;->c:Llo;

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Llo;->a(IIIII)V

    invoke-virtual {v7}, Luw;->a()V

    goto/16 :goto_0

    :cond_4
    move v0, v1

    goto :goto_3

    :cond_5
    iget-object v2, v7, Luw;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v2

    goto :goto_4

    :cond_6
    if-eqz v0, :cond_7

    move v0, v5

    :goto_6
    int-to-float v0, v0

    int-to-float v2, v2

    div-float/2addr v0, v2

    add-float/2addr v0, v12

    const/high16 v2, 0x4396

    mul-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_5

    :cond_7
    move v0, v6

    goto :goto_6

    :cond_8
    move v4, p2

    goto/16 :goto_2

    :cond_9
    move v3, p1

    goto/16 :goto_1
.end method

.method public final a(IIZ)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x1

    .line 3185
    add-int v1, p1, p2

    .line 3186
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Lsa;

    invoke-virtual {v0}, Lsa;->b()I

    move-result v2

    .line 3187
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    .line 3188
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->c:Lsa;

    invoke-virtual {v3, v0}, Lsa;->c(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Lux;

    move-result-object v3

    .line 3189
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lux;->b()Z

    move-result v4

    if-nez v4, :cond_0

    .line 3190
    iget v4, v3, Lux;->b:I

    if-lt v4, v1, :cond_1

    .line 3196
    neg-int v4, p2

    invoke-virtual {v3, v4, p3}, Lux;->a(IZ)V

    .line 3197
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->n:Luv;

    iput-boolean v6, v3, Luv;->i:Z

    .line 3187
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3198
    :cond_1
    iget v4, v3, Lux;->b:I

    if-lt v4, p1, :cond_0

    .line 3203
    add-int/lit8 v4, p1, -0x1

    neg-int v5, p2

    invoke-virtual {v3, v7}, Lux;->a(I)V

    invoke-virtual {v3, v5, p3}, Lux;->a(IZ)V

    iput v4, v3, Lux;->b:I

    .line 3205
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->n:Luv;

    iput-boolean v6, v3, Luv;->i:Z

    goto :goto_1

    .line 3209
    :cond_2
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->a:Lur;

    add-int v3, p1, p2

    iget-object v0, v2, Lur;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-ltz v1, :cond_5

    iget-object v0, v2, Lur;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lux;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lux;->d()I

    move-result v4

    if-lt v4, v3, :cond_4

    neg-int v4, p2

    invoke-virtual {v0, v4, p3}, Lux;->a(IZ)V

    :cond_3
    :goto_3
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Lux;->d()I

    move-result v4

    if-lt v4, p1, :cond_3

    invoke-virtual {v0, v7}, Lux;->a(I)V

    invoke-virtual {v2, v1}, Lur;->c(I)V

    goto :goto_3

    .line 3210
    :cond_5
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 3211
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 1929
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1930
    if-nez p1, :cond_0

    .line 1931
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call this method while RecyclerView is computing a layout or scrolling"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1934
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1936
    :cond_1
    return-void
.end method

.method public final a(Lum;)V
    .locals 2
    .parameter

    .prologue
    .line 1161
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Luo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Luo;

    const-string v1, "Cannot add item decoration during a scroll  or layout"

    invoke-virtual {v0, v1}, Luo;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setWillNotDraw(Z)V

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->i()V

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 1162
    return-void
.end method

.method public a(Lup;)V
    .locals 1
    .parameter

    .prologue
    .line 1229
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->W:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1230
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->W:Ljava/util/List;

    .line 1232
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->W:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1233
    return-void
.end method

.method public final a(Z)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1547
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->C:Z

    if-eqz v0, :cond_1

    .line 1548
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->D:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Luo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Luh;

    if-eqz v0, :cond_0

    .line 1550
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->h()V

    .line 1552
    :cond_0
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->C:Z

    .line 1553
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->D:Z

    .line 1555
    :cond_1
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 1862
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1865
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 1540
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->C:Z

    if-nez v0, :cond_0

    .line 1541
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->C:Z

    .line 1542
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->D:Z

    .line 1544
    :cond_0
    return-void
.end method

.method public final b(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 3620
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollX()I

    move-result v0

    .line 3621
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollY()I

    move-result v1

    .line 3622
    invoke-virtual {p0, v0, v1, v0, v1}, Landroid/support/v7/widget/RecyclerView;->onScrollChanged(IIII)V

    .line 3625
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->V:Lup;

    if-eqz v0, :cond_0

    .line 3630
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->V:Lup;

    invoke-virtual {v0, p0, p1, p2}, Lup;->a(Landroid/support/v7/widget/RecyclerView;II)V

    .line 3632
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->W:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 3633
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->W:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 3634
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->W:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lup;

    invoke-virtual {v0, p0, p1, p2}, Lup;->a(Landroid/support/v7/widget/RecyclerView;II)V

    .line 3633
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 3637
    :cond_1
    return-void
.end method

.method public final c()V
    .locals 4

    .prologue
    .line 1753
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->i:Lkx;

    if-eqz v0, :cond_0

    .line 1763
    :goto_0
    return-void

    .line 1756
    :cond_0
    new-instance v0, Lkx;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lkx;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->i:Lkx;

    .line 1757
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->u:Z

    if-eqz v0, :cond_1

    .line 1758
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->i:Lkx;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lkx;->a(II)V

    goto :goto_0

    .line 1761
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->i:Lkx;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lkx;->a(II)V

    goto :goto_0
.end method

.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter

    .prologue
    .line 3068
    instance-of v0, p1, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Luo;

    check-cast p1, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-virtual {v0, p1}, Luo;->a(Landroid/support/v7/widget/RecyclerView$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeHorizontalScrollExtent()I
    .locals 2

    .prologue
    .line 1452
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Luo;

    invoke-virtual {v0}, Luo;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Luo;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->n:Luv;

    invoke-virtual {v0, v1}, Luo;->c(Luv;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeHorizontalScrollOffset()I
    .locals 2

    .prologue
    .line 1429
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Luo;

    invoke-virtual {v0}, Luo;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Luo;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->n:Luv;

    invoke-virtual {v0, v1}, Luo;->a(Luv;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeHorizontalScrollRange()I
    .locals 2

    .prologue
    .line 1472
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Luo;

    invoke-virtual {v0}, Luo;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Luo;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->n:Luv;

    invoke-virtual {v0, v1}, Luo;->e(Luv;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeVerticalScrollExtent()I
    .locals 2

    .prologue
    .line 1515
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Luo;

    invoke-virtual {v0}, Luo;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Luo;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->n:Luv;

    invoke-virtual {v0, v1}, Luo;->d(Luv;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeVerticalScrollOffset()I
    .locals 2

    .prologue
    .line 1494
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Luo;

    invoke-virtual {v0}, Luo;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Luo;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->n:Luv;

    invoke-virtual {v0, v1}, Luo;->b(Luv;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeVerticalScrollRange()I
    .locals 2

    .prologue
    .line 1535
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Luo;

    invoke-virtual {v0}, Luo;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Luo;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->n:Luv;

    invoke-virtual {v0, v1}, Luo;->f(Luv;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 8
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 3573
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 3574
    iget-boolean v1, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->e:Z

    if-nez v1, :cond_0

    .line 3575
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->d:Landroid/graphics/Rect;

    .line 3590
    :goto_0
    return-object v0

    .line 3578
    :cond_0
    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->d:Landroid/graphics/Rect;

    .line 3579
    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 3580
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v4

    .line 3581
    :goto_1
    if-ge v3, v5, :cond_1

    .line 3582
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->w:Landroid/graphics/Rect;

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 3583
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lum;

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->w:Landroid/graphics/Rect;

    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->n:Luv;

    invoke-virtual {v1, v6, p1, p0, v7}, Lum;->a(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Luv;)V

    .line 3584
    iget v1, v2, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->w:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v6

    iput v1, v2, Landroid/graphics/Rect;->left:I

    .line 3585
    iget v1, v2, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->w:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v6

    iput v1, v2, Landroid/graphics/Rect;->top:I

    .line 3586
    iget v1, v2, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->w:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v6

    iput v1, v2, Landroid/graphics/Rect;->right:I

    .line 3587
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->w:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v6

    iput v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 3581
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    .line 3589
    :cond_1
    iput-boolean v4, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->e:Z

    move-object v0, v2

    .line 3590
    goto :goto_0
.end method

.method public final d()V
    .locals 4

    .prologue
    .line 1766
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Lkx;

    if-eqz v0, :cond_0

    .line 1776
    :goto_0
    return-void

    .line 1769
    :cond_0
    new-instance v0, Lkx;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lkx;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Lkx;

    .line 1770
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->u:Z

    if-eqz v0, :cond_1

    .line 1771
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Lkx;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lkx;->a(II)V

    goto :goto_0

    .line 1774
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Lkx;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lkx;->a(II)V

    goto :goto_0
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 8317
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->af:Lgb;

    invoke-virtual {v0, p1, p2, p3}, Lgb;->a(FFZ)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 8322
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->af:Lgb;

    invoke-virtual {v0, p1, p2}, Lgb;->a(FF)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 8312
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->af:Lgb;

    invoke-virtual {v0, p1, p2, p3, p4}, Lgb;->a(II[I[I)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 8306
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->af:Lgb;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lgb;->a(IIII[I)Z

    move-result v0

    return v0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 986
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 987
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 978
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    .line 979
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2997
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 2999
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v0, v1

    .line 3000
    :goto_0
    if-ge v0, v3, :cond_0

    .line 3001
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->f:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 3000
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3006
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->i:Lkx;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->i:Lkx;

    invoke-virtual {v0}, Lkx;->a()Z

    move-result v0

    if-nez v0, :cond_e

    .line 3007
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 3008
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->u:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v0

    .line 3009
    :goto_1
    const/high16 v4, 0x4387

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 3010
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v4

    neg-int v4, v4

    add-int/2addr v0, v4

    int-to-float v0, v0

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3011
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->i:Lkx;

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->i:Lkx;

    invoke-virtual {v0, p1}, Lkx;->a(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v2

    .line 3012
    :goto_2
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3014
    :goto_3
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->j:Lkx;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->j:Lkx;

    invoke-virtual {v3}, Lkx;->a()Z

    move-result v3

    if-nez v3, :cond_2

    .line 3015
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 3016
    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->u:Z

    if-eqz v3, :cond_1

    .line 3017
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3019
    :cond_1
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->j:Lkx;

    if-eqz v3, :cond_9

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->j:Lkx;

    invoke-virtual {v3, p1}, Lkx;->a(Landroid/graphics/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_9

    move v3, v2

    :goto_4
    or-int/2addr v0, v3

    .line 3020
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3022
    :cond_2
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->k:Lkx;

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->k:Lkx;

    invoke-virtual {v3}, Lkx;->a()Z

    move-result v3

    if-nez v3, :cond_3

    .line 3023
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 3024
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v5

    .line 3025
    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->u:Z

    if-eqz v3, :cond_a

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    .line 3026
    :goto_5
    const/high16 v6, 0x42b4

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    .line 3027
    neg-int v3, v3

    int-to-float v3, v3

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3028
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->k:Lkx;

    if-eqz v3, :cond_b

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->k:Lkx;

    invoke-virtual {v3, p1}, Lkx;->a(Landroid/graphics/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_b

    move v3, v2

    :goto_6
    or-int/2addr v0, v3

    .line 3029
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3031
    :cond_3
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->l:Lkx;

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->l:Lkx;

    invoke-virtual {v3}, Lkx;->a()Z

    move-result v3

    if-nez v3, :cond_5

    .line 3032
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 3033
    const/high16 v4, 0x4334

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 3034
    iget-boolean v4, p0, Landroid/support/v7/widget/RecyclerView;->u:Z

    if-eqz v4, :cond_c

    .line 3035
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v4

    neg-int v4, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v5

    neg-int v5, v5

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3039
    :goto_7
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->l:Lkx;

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->l:Lkx;

    invoke-virtual {v4, p1}, Lkx;->a(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v1, v2

    :cond_4
    or-int/2addr v0, v1

    .line 3040
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3046
    :cond_5
    if-nez v0, :cond_d

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->m:Luk;

    if-eqz v1, :cond_d

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_d

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->m:Luk;

    invoke-virtual {v1}, Luk;->b()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 3051
    :goto_8
    if-eqz v2, :cond_6

    .line 3052
    invoke-static {p0}, Lgs;->d(Landroid/view/View;)V

    .line 3054
    :cond_6
    return-void

    :cond_7
    move v0, v1

    .line 3008
    goto/16 :goto_1

    :cond_8
    move v0, v1

    .line 3011
    goto/16 :goto_2

    :cond_9
    move v3, v1

    .line 3019
    goto/16 :goto_4

    :cond_a
    move v3, v1

    .line 3025
    goto/16 :goto_5

    :cond_b
    move v3, v1

    .line 3028
    goto :goto_6

    .line 3037
    :cond_c
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_7

    :cond_d
    move v2, v0

    goto :goto_8

    :cond_e
    move v0, v1

    goto/16 :goto_3
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3518
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method public final e()V
    .locals 4

    .prologue
    .line 1779
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->j:Lkx;

    if-eqz v0, :cond_0

    .line 1790
    :goto_0
    return-void

    .line 1782
    :cond_0
    new-instance v0, Lkx;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lkx;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->j:Lkx;

    .line 1783
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->u:Z

    if-eqz v0, :cond_1

    .line 1784
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->j:Lkx;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lkx;->a(II)V

    goto :goto_0

    .line 1787
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->j:Lkx;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lkx;->a(II)V

    goto :goto_0
.end method

.method public final f()V
    .locals 4

    .prologue
    .line 1793
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Lkx;

    if-eqz v0, :cond_0

    .line 1803
    :goto_0
    return-void

    .line 1796
    :cond_0
    new-instance v0, Lkx;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lkx;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Lkx;

    .line 1797
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->u:Z

    if-eqz v0, :cond_1

    .line 1798
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Lkx;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lkx;->a(II)V

    goto :goto_0

    .line 1801
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Lkx;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lkx;->a(II)V

    goto :goto_0
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1813
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    .line 1818
    invoke-virtual {v0, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 1819
    if-nez v0, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->d:Luh;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->e:Luo;

    if-eqz v1, :cond_0

    .line 1820
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->b()V

    .line 1821
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Luo;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->a:Lur;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->n:Luv;

    invoke-virtual {v0, p2, v1, v2}, Luo;->c(ILur;Luv;)Landroid/view/View;

    move-result-object v0

    .line 1822
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Z)V

    .line 1824
    :cond_0
    if-eqz v0, :cond_1

    :goto_0
    return-object v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 2492
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Luk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Luk;

    iget-boolean v0, v0, Luk;->m:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 3073
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Luo;

    if-nez v0, :cond_0

    .line 3074
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3076
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Luo;

    invoke-virtual {v0}, Luo;->a()Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter

    .prologue
    .line 3081
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Luo;

    if-nez v0, :cond_0

    .line 3082
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3084
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Luo;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Luo;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter

    .prologue
    .line 3089
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Luo;

    if-nez v0, :cond_0

    .line 3090
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3092
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Luo;

    invoke-virtual {v0, p1}, Luo;->a(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Luh;
    .locals 1

    .prologue
    .line 836
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Luh;

    return-object v0
.end method

.method public getBaseline()I
    .locals 1

    .prologue
    .line 863
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Luo;

    if-eqz v0, :cond_0

    .line 864
    const/4 v0, -0x1

    .line 866
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v0

    goto :goto_0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 9784
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ad:Ldd;

    if-nez v0, :cond_0

    .line 9785
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result v0

    .line 9787
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ad:Ldd;

    invoke-interface {v0}, Ldd;->b()I

    move-result v0

    goto :goto_0
.end method

.method public getCompatAccessibilityDelegate()Luy;
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ac:Luy;

    return-object v0
.end method

.method public getItemAnimator()Luk;
    .locals 1

    .prologue
    .line 2488
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Luk;

    return-object v0
.end method

.method public getLayoutManager()Luo;
    .locals 1

    .prologue
    .line 1039
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Luo;

    return-object v0
.end method

.method public getMaxFlingVelocity()I
    .locals 1

    .prologue
    .line 1663
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->S:I

    return v0
.end method

.method public getMinFlingVelocity()I
    .locals 1

    .prologue
    .line 1653
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->R:I

    return v0
.end method

.method public getRecycledViewPool()Luq;
    .locals 1

    .prologue
    .line 1051
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Lur;

    invoke-virtual {v0}, Lur;->c()Luq;

    move-result-object v0

    return-object v0
.end method

.method public getScrollState()I
    .locals 1

    .prologue
    .line 1099
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->J:I

    return v0
.end method

.method public final h()V
    .locals 13

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 2566
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Luh;

    if-nez v0, :cond_1

    .line 2786
    :cond_0
    :goto_0
    return-void

    .line 2570
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Luo;

    if-eqz v0, :cond_0

    .line 2574
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Luv;

    iget-object v0, v0, Luv;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2575
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->b()V

    .line 2576
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->r()V

    .line 2578
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->v()V

    .line 2580
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->n:Luv;

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Luv;

    iget-boolean v0, v0, Luv;->k:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ldv;

    invoke-direct {v0}, Ldv;-><init>()V

    :goto_1
    iput-object v0, v1, Luv;->d:Ldv;

    .line 2582
    iput-boolean v8, p0, Landroid/support/v7/widget/RecyclerView;->p:Z

    iput-boolean v8, p0, Landroid/support/v7/widget/RecyclerView;->o:Z

    .line 2584
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Luv;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->n:Luv;

    iget-boolean v1, v1, Luv;->l:Z

    iput-boolean v1, v0, Luv;->j:Z

    .line 2585
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Luv;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->d:Luh;

    invoke-virtual {v1}, Luh;->a()I

    move-result v1

    iput v1, v0, Luv;->f:I

    .line 2586
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->ae:[I

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Lsa;

    invoke-virtual {v0}, Lsa;->a()I

    move-result v5

    if-nez v5, :cond_4

    aput v8, v4, v8

    aput v8, v4, v9

    .line 2588
    :goto_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Luv;

    iget-boolean v0, v0, Luv;->k:Z

    if-eqz v0, :cond_7

    .line 2590
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Luv;

    iget-object v0, v0, Luv;->b:Ldv;

    invoke-virtual {v0}, Ldv;->clear()V

    .line 2591
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Luv;

    iget-object v0, v0, Luv;->c:Ldv;

    invoke-virtual {v0}, Ldv;->clear()V

    .line 2592
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Lsa;

    invoke-virtual {v0}, Lsa;->a()I

    move-result v1

    move v0, v8

    .line 2593
    :goto_3
    if-ge v0, v1, :cond_7

    .line 2594
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->c:Lsa;

    invoke-virtual {v2, v0}, Lsa;->b(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Lux;

    move-result-object v2

    .line 2595
    invoke-virtual {v2}, Lux;->b()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lux;->k()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2596
    iget-object v3, v2, Lux;->a:Landroid/view/View;

    .line 2599
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->n:Luv;

    iget-object v4, v4, Luv;->b:Ldv;

    new-instance v5, Lun;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v10

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    invoke-direct {v5, v2, v6, v10}, Lun;-><init>(Lux;II)V

    invoke-virtual {v4, v2, v5}, Ldv;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2593
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    move-object v0, v7

    .line 2580
    goto :goto_1

    .line 2586
    :cond_4
    const v2, 0x7fffffff

    const/high16 v1, -0x8000

    move v3, v8

    :goto_4
    if-ge v3, v5, :cond_6

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Lsa;

    invoke-virtual {v0, v3}, Lsa;->b(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Lux;

    move-result-object v0

    invoke-virtual {v0}, Lux;->b()Z

    move-result v6

    if-nez v6, :cond_29

    invoke-virtual {v0}, Lux;->d()I

    move-result v0

    if-ge v0, v2, :cond_5

    move v2, v0

    :cond_5
    if-le v0, v1, :cond_29

    move v1, v2

    :goto_5
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    move v1, v0

    goto :goto_4

    :cond_6
    aput v2, v4, v8

    aput v1, v4, v9

    goto :goto_2

    .line 2603
    :cond_7
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Luv;

    iget-boolean v0, v0, Luv;->l:Z

    if-eqz v0, :cond_10

    .line 2610
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Lsa;

    invoke-virtual {v0}, Lsa;->b()I

    move-result v1

    move v0, v8

    :goto_6
    if-ge v0, v1, :cond_9

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->c:Lsa;

    invoke-virtual {v2, v0}, Lsa;->c(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Lux;

    move-result-object v2

    invoke-virtual {v2}, Lux;->b()Z

    move-result v3

    if-nez v3, :cond_8

    iget v3, v2, Lux;->c:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_8

    iget v3, v2, Lux;->b:I

    iput v3, v2, Lux;->c:I

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 2612
    :cond_9
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Luv;

    iget-object v0, v0, Luv;->d:Ldv;

    if-eqz v0, :cond_b

    .line 2613
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Lsa;

    invoke-virtual {v0}, Lsa;->a()I

    move-result v1

    move v0, v8

    .line 2614
    :goto_7
    if-ge v0, v1, :cond_b

    .line 2615
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->c:Lsa;

    invoke-virtual {v2, v0}, Lsa;->b(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Lux;

    move-result-object v2

    .line 2616
    invoke-virtual {v2}, Lux;->m()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v2}, Lux;->o()Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {v2}, Lux;->b()Z

    move-result v3

    if-nez v3, :cond_a

    .line 2617
    iget v3, v2, Lux;->b:I

    int-to-long v4, v3

    .line 2618
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->n:Luv;

    iget-object v3, v3, Luv;->d:Ldv;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ldv;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2619
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->n:Luv;

    iget-object v3, v3, Luv;->b:Ldv;

    invoke-virtual {v3, v2}, Ldv;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2614
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 2624
    :cond_b
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Luv;

    iget-boolean v0, v0, Luv;->i:Z

    .line 2625
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->n:Luv;

    iput-boolean v8, v1, Luv;->i:Z

    .line 2627
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->e:Luo;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->a:Lur;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->n:Luv;

    invoke-virtual {v1, v2, v3}, Luo;->c(Lur;Luv;)V

    .line 2628
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->n:Luv;

    iput-boolean v0, v1, Luv;->i:Z

    .line 2630
    new-instance v3, Ldv;

    invoke-direct {v3}, Ldv;-><init>()V

    move v1, v8

    .line 2631
    :goto_8
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Lsa;

    invoke-virtual {v0}, Lsa;->a()I

    move-result v0

    if-ge v1, v0, :cond_e

    .line 2633
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Lsa;

    invoke-virtual {v0, v1}, Lsa;->b(I)Landroid/view/View;

    move-result-object v4

    .line 2634
    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Lux;

    move-result-object v0

    invoke-virtual {v0}, Lux;->b()Z

    move-result v0

    if-nez v0, :cond_c

    move v2, v8

    .line 2635
    :goto_9
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Luv;

    iget-object v0, v0, Luv;->b:Ldv;

    invoke-virtual {v0}, Ldv;->size()I

    move-result v0

    if-ge v2, v0, :cond_28

    .line 2638
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Luv;

    iget-object v0, v0, Luv;->b:Ldv;

    invoke-virtual {v0, v2}, Ldv;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lux;

    .line 2639
    iget-object v0, v0, Lux;->a:Landroid/view/View;

    if-ne v0, v4, :cond_d

    move v0, v9

    .line 2644
    :goto_a
    if-nez v0, :cond_c

    .line 2645
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v10

    invoke-direct {v0, v2, v5, v6, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v4, v0}, Ldv;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2631
    :cond_c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 2637
    :cond_d
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_9

    .line 2650
    :cond_e
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->w()V

    .line 2651
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Lrx;

    invoke-virtual {v0}, Lrx;->c()V

    move-object v6, v3

    .line 2668
    :goto_b
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Luv;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->d:Luh;

    invoke-virtual {v1}, Luh;->a()I

    move-result v1

    iput v1, v0, Luv;->f:I

    .line 2669
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Luv;

    iput v8, v0, Luv;->h:I

    .line 2672
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Luv;

    iput-boolean v8, v0, Luv;->j:Z

    .line 2673
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Luo;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->a:Lur;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->n:Luv;

    invoke-virtual {v0, v1, v2}, Luo;->c(Lur;Luv;)V

    .line 2675
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Luv;

    iput-boolean v8, v0, Luv;->i:Z

    .line 2676
    iput-object v7, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/RecyclerView$SavedState;

    .line 2679
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->n:Luv;

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Luv;

    iget-boolean v0, v0, Luv;->k:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Luk;

    if-eqz v0, :cond_12

    move v0, v9

    :goto_c
    iput-boolean v0, v1, Luv;->k:Z

    .line 2681
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Luv;

    iget-boolean v0, v0, Luv;->k:Z

    if-eqz v0, :cond_25

    .line 2683
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Luv;

    iget-object v0, v0, Luv;->d:Ldv;

    if-eqz v0, :cond_13

    new-instance v0, Ldv;

    invoke-direct {v0}, Ldv;-><init>()V

    move-object v10, v0

    .line 2685
    :goto_d
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Lsa;

    invoke-virtual {v0}, Lsa;->a()I

    move-result v1

    move v0, v8

    .line 2686
    :goto_e
    if-ge v0, v1, :cond_15

    .line 2687
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->c:Lsa;

    invoke-virtual {v2, v0}, Lsa;->b(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Lux;

    move-result-object v2

    .line 2688
    invoke-virtual {v2}, Lux;->b()Z

    move-result v3

    if-nez v3, :cond_f

    .line 2689
    iget-object v3, v2, Lux;->a:Landroid/view/View;

    .line 2692
    iget v4, v2, Lux;->b:I

    int-to-long v4, v4

    .line 2693
    if-eqz v10, :cond_14

    iget-object v11, p0, Landroid/support/v7/widget/RecyclerView;->n:Luv;

    iget-object v11, v11, Luv;->d:Ldv;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Ldv;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_14

    .line 2694
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v10, v3, v2}, Ldv;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2686
    :cond_f
    :goto_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 2653
    :cond_10
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->w()V

    .line 2655
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Lrx;

    invoke-virtual {v0}, Lrx;->e()V

    .line 2656
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Luv;

    iget-object v0, v0, Luv;->d:Ldv;

    if-eqz v0, :cond_27

    .line 2657
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Lsa;

    invoke-virtual {v0}, Lsa;->a()I

    move-result v1

    move v0, v8

    .line 2658
    :goto_10
    if-ge v0, v1, :cond_27

    .line 2659
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->c:Lsa;

    invoke-virtual {v2, v0}, Lsa;->b(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Lux;

    move-result-object v2

    .line 2660
    invoke-virtual {v2}, Lux;->m()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual {v2}, Lux;->o()Z

    move-result v3

    if-nez v3, :cond_11

    invoke-virtual {v2}, Lux;->b()Z

    move-result v3

    if-nez v3, :cond_11

    .line 2661
    iget v3, v2, Lux;->b:I

    int-to-long v4, v3

    .line 2662
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->n:Luv;

    iget-object v3, v3, Luv;->d:Ldv;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ldv;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2663
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->n:Luv;

    iget-object v3, v3, Luv;->b:Ldv;

    invoke-virtual {v3, v2}, Ldv;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2658
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_12
    move v0, v8

    .line 2679
    goto/16 :goto_c

    :cond_13
    move-object v10, v7

    .line 2683
    goto/16 :goto_d

    .line 2696
    :cond_14
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->n:Luv;

    iget-object v4, v4, Luv;->c:Ldv;

    new-instance v5, Lun;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v11

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v12

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    invoke-direct {v5, v2, v11, v12}, Lun;-><init>(Lux;II)V

    invoke-virtual {v4, v2, v5}, Ldv;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    .line 2700
    :cond_15
    invoke-direct {p0, v6}, Landroid/support/v7/widget/RecyclerView;->a(Ldv;)V

    .line 2702
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Luv;

    iget-object v0, v0, Luv;->b:Ldv;

    invoke-virtual {v0}, Ldv;->size()I

    move-result v0

    .line 2703
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_11
    if-ltz v1, :cond_17

    .line 2704
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Luv;

    iget-object v0, v0, Luv;->b:Ldv;

    invoke-virtual {v0, v1}, Ldv;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lux;

    .line 2705
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->n:Luv;

    iget-object v2, v2, Luv;->c:Ldv;

    invoke-virtual {v2, v0}, Ldv;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 2706
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Luv;

    iget-object v0, v0, Luv;->b:Ldv;

    invoke-virtual {v0, v1}, Ldv;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lun;

    .line 2707
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->n:Luv;

    iget-object v2, v2, Luv;->b:Ldv;

    invoke-virtual {v2, v1}, Ldv;->d(I)Ljava/lang/Object;

    .line 2709
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->a:Lur;

    iget-object v3, v0, Lun;->a:Lux;

    invoke-virtual {v2, v3}, Lur;->b(Lux;)V

    .line 2711
    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView;->a(Lun;)V

    .line 2703
    :cond_16
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_11

    .line 2715
    :cond_17
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Luv;

    iget-object v0, v0, Luv;->c:Ldv;

    invoke-virtual {v0}, Ldv;->size()I

    move-result v0

    .line 2716
    if-lez v0, :cond_1d

    .line 2717
    add-int/lit8 v0, v0, -0x1

    move v11, v0

    :goto_12
    if-ltz v11, :cond_1d

    .line 2718
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Luv;

    iget-object v0, v0, Luv;->c:Ldv;

    invoke-virtual {v0, v11}, Ldv;->b(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lux;

    .line 2719
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Luv;

    iget-object v0, v0, Luv;->c:Ldv;

    invoke-virtual {v0, v11}, Ldv;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lun;

    .line 2720
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->n:Luv;

    iget-object v2, v2, Luv;->b:Ldv;

    invoke-virtual {v2}, Ldv;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_18

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->n:Luv;

    iget-object v2, v2, Luv;->b:Ldv;

    invoke-virtual {v2, v1}, Ldv;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 2722
    :cond_18
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->n:Luv;

    iget-object v2, v2, Luv;->c:Ldv;

    invoke-virtual {v2, v11}, Ldv;->d(I)Ljava/lang/Object;

    .line 2723
    if-eqz v6, :cond_1b

    iget-object v2, v1, Lux;->a:Landroid/view/View;

    invoke-virtual {v6, v2}, Ldv;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    move-object v3, v2

    .line 2725
    :goto_13
    iget v4, v0, Lun;->b:I

    iget v5, v0, Lun;->c:I

    if-eqz v3, :cond_1c

    iget v0, v3, Landroid/graphics/Rect;->left:I

    if-ne v0, v4, :cond_19

    iget v0, v3, Landroid/graphics/Rect;->top:I

    if-eq v0, v5, :cond_1c

    :cond_19
    invoke-virtual {v1, v8}, Lux;->a(Z)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Luk;

    iget v2, v3, Landroid/graphics/Rect;->left:I

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {v0 .. v5}, Luk;->a(Lux;IIII)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->u()V

    .line 2717
    :cond_1a
    :goto_14
    add-int/lit8 v0, v11, -0x1

    move v11, v0

    goto :goto_12

    :cond_1b
    move-object v3, v7

    .line 2723
    goto :goto_13

    .line 2725
    :cond_1c
    invoke-virtual {v1, v8}, Lux;->a(Z)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Luk;

    invoke-virtual {v0, v1}, Luk;->b(Lux;)Z

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->u()V

    goto :goto_14

    .line 2731
    :cond_1d
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Luv;

    iget-object v0, v0, Luv;->c:Ldv;

    invoke-virtual {v0}, Ldv;->size()I

    move-result v11

    move v6, v8

    .line 2732
    :goto_15
    if-ge v6, v11, :cond_20

    .line 2733
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Luv;

    iget-object v0, v0, Luv;->c:Ldv;

    invoke-virtual {v0, v6}, Ldv;->b(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lux;

    .line 2734
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Luv;

    iget-object v0, v0, Luv;->c:Ldv;

    invoke-virtual {v0, v6}, Ldv;->c(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lun;

    .line 2735
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Luv;

    iget-object v0, v0, Luv;->b:Ldv;

    invoke-virtual {v0, v1}, Ldv;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lun;

    .line 2736
    if-eqz v3, :cond_1f

    if-eqz v5, :cond_1f

    .line 2737
    iget v0, v3, Lun;->b:I

    iget v2, v5, Lun;->b:I

    if-ne v0, v2, :cond_1e

    iget v0, v3, Lun;->c:I

    iget v2, v5, Lun;->c:I

    if-eq v0, v2, :cond_1f

    .line 2738
    :cond_1e
    invoke-virtual {v1, v8}, Lux;->a(Z)V

    .line 2743
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Luk;

    iget v2, v3, Lun;->b:I

    iget v3, v3, Lun;->c:I

    iget v4, v5, Lun;->b:I

    iget v5, v5, Lun;->c:I

    invoke-virtual/range {v0 .. v5}, Luk;->a(Lux;IIII)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 2745
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->u()V

    .line 2732
    :cond_1f
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_15

    .line 2751
    :cond_20
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Luv;

    iget-object v0, v0, Luv;->d:Ldv;

    if-eqz v0, :cond_23

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Luv;

    iget-object v0, v0, Luv;->d:Ldv;

    invoke-virtual {v0}, Ldv;->size()I

    move-result v0

    .line 2753
    :goto_16
    add-int/lit8 v0, v0, -0x1

    move v11, v0

    :goto_17
    if-ltz v11, :cond_25

    .line 2754
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Luv;

    iget-object v0, v0, Luv;->d:Ldv;

    invoke-virtual {v0, v11}, Ldv;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 2755
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Luv;

    iget-object v0, v0, Luv;->d:Ldv;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldv;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lux;

    .line 2756
    invoke-virtual {v1}, Lux;->b()Z

    move-result v0

    if-nez v0, :cond_22

    .line 2758
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Lur;

    invoke-static {v0}, Lur;->a(Lur;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Lur;

    invoke-static {v0}, Lur;->a(Lur;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 2764
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v10, v0}, Ldv;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lux;

    invoke-virtual {v1, v8}, Lux;->a(Z)V

    invoke-direct {p0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Lux;)V

    iput-object v2, v1, Lux;->f:Lux;

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Lur;

    invoke-virtual {v0, v1}, Lur;->b(Lux;)V

    iget-object v0, v1, Lux;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v0, v1, Lux;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    if-eqz v2, :cond_21

    invoke-virtual {v2}, Lux;->b()Z

    move-result v0

    if-eqz v0, :cond_24

    :cond_21
    move v6, v4

    move v5, v3

    :goto_18
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Luk;

    invoke-virtual/range {v0 .. v6}, Luk;->a(Lux;Lux;IIII)Z

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->u()V

    .line 2753
    :cond_22
    add-int/lit8 v0, v11, -0x1

    move v11, v0

    goto :goto_17

    :cond_23
    move v0, v8

    .line 2751
    goto :goto_16

    .line 2764
    :cond_24
    iget-object v0, v2, Lux;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v5

    iget-object v0, v2, Lux;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v2, v8}, Lux;->a(Z)V

    iput-object v1, v2, Lux;->g:Lux;

    goto :goto_18

    .line 2770
    :cond_25
    invoke-virtual {p0, v8}, Landroid/support/v7/widget/RecyclerView;->a(Z)V

    .line 2771
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Luo;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->a:Lur;

    invoke-virtual {v0, v1}, Luo;->b(Lur;)V

    .line 2772
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Luv;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->n:Luv;

    iget v1, v1, Luv;->f:I

    iput v1, v0, Luv;->g:I

    .line 2773
    iput-boolean v8, p0, Landroid/support/v7/widget/RecyclerView;->h:Z

    .line 2774
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Luv;

    iput-boolean v8, v0, Luv;->k:Z

    .line 2775
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Luv;

    iput-boolean v8, v0, Luv;->l:Z

    .line 2776
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->s()V

    .line 2777
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Lur;

    invoke-static {v0}, Lur;->a(Lur;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 2779
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Lur;

    invoke-static {v0}, Lur;->a(Lur;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2781
    :cond_26
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Luv;

    iput-object v7, v0, Luv;->d:Ldv;

    .line 2783
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ae:[I

    aget v0, v0, v8

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->ae:[I

    aget v1, v1, v9

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/RecyclerView;->e(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2784
    invoke-virtual {p0, v8, v8}, Landroid/support/v7/widget/RecyclerView;->b(II)V

    goto/16 :goto_0

    :cond_27
    move-object v6, v7

    goto/16 :goto_b

    :cond_28
    move v0, v8

    goto/16 :goto_a

    :cond_29
    move v0, v1

    move v1, v2

    goto/16 :goto_5
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    .prologue
    .line 8300
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->af:Lgb;

    invoke-virtual {v0}, Lgb;->a()Z

    move-result v0

    return v0
.end method

.method public final i()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 2987
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Lsa;

    invoke-virtual {v0}, Lsa;->b()I

    move-result v3

    move v2, v1

    .line 2988
    :goto_0
    if-ge v2, v3, :cond_0

    .line 2989
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Lsa;

    invoke-virtual {v0, v2}, Lsa;->c(I)Landroid/view/View;

    move-result-object v0

    .line 2990
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    iput-boolean v4, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->e:Z

    .line 2988
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 2992
    :cond_0
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->a:Lur;

    iget-object v0, v2, Lur;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_1
    if-ge v1, v3, :cond_2

    iget-object v0, v2, Lur;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lux;

    iget-object v0, v0, Lux;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    if-eqz v0, :cond_1

    iput-boolean v4, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->e:Z

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 2993
    :cond_2
    return-void
.end method

.method public isAttachedToWindow()Z
    .locals 1

    .prologue
    .line 1900
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->A:Z

    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .prologue
    .line 8285
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->af:Lgb;

    iget-boolean v0, v0, Lgb;->a:Z

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1869
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 1870
    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->I:I

    .line 1871
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->A:Z

    .line 1872
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->g:Z

    .line 1873
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->ab:Z

    .line 1877
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1881
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 1882
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Luk;

    if-eqz v0, :cond_0

    .line 1883
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Luk;

    invoke-virtual {v0}, Luk;->d()V

    .line 1885
    :cond_0
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->g:Z

    .line 1887
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->m()V

    .line 1888
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->A:Z

    .line 1889
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Luo;

    if-eqz v0, :cond_1

    .line 1890
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Luo;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->a:Lur;

    invoke-virtual {v0, p0, v1}, Luo;->a(Landroid/support/v7/widget/RecyclerView;Lur;)V

    .line 1892
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->aj:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1893
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter

    .prologue
    .line 3058
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 3060
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3061
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 3062
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lum;

    invoke-virtual {v0, p1, p0}, Lum;->a(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V

    .line 3061
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 3064
    :cond_0
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 2268
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Luo;

    if-nez v0, :cond_1

    .line 2293
    :cond_0
    :goto_0
    return v4

    .line 2271
    :cond_1
    invoke-static {p1}, Lfv;->d(Landroid/view/MotionEvent;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 2272
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    .line 2274
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Luo;

    invoke-virtual {v0}, Luo;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2275
    const/16 v0, 0x9

    invoke-static {p1, v0}, Lfv;->e(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 2280
    :goto_1
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->e:Luo;

    invoke-virtual {v2}, Luo;->d()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2281
    const/16 v2, 0xa

    invoke-static {p1, v2}, Lfv;->e(Landroid/view/MotionEvent;I)F

    move-result v2

    .line 2287
    :goto_2
    cmpl-float v3, v0, v1

    if-nez v3, :cond_2

    cmpl-float v1, v2, v1

    if-eqz v1, :cond_0

    .line 2288
    :cond_2
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollFactor()F

    move-result v1

    .line 2289
    mul-float/2addr v2, v1

    float-to-int v2, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v2, v0}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 2278
    goto :goto_1

    :cond_4
    move v2, v1

    .line 2284
    goto :goto_2
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x3

    const/4 v1, -0x1

    const/high16 v8, 0x3f00

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2017
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-eq v5, v9, :cond_0

    if-nez v5, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->z:Ldd;

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v4, v3

    :goto_0
    if-ge v4, v6, :cond_4

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->y:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldd;

    invoke-interface {v0}, Ldd;->c()Z

    move-result v7

    if-eqz v7, :cond_3

    if-eq v5, v9, :cond_3

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->z:Ldd;

    move v0, v2

    :goto_1
    if-eqz v0, :cond_5

    .line 2018
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->q()V

    .line 2101
    :cond_2
    :goto_2
    return v2

    .line 2017
    :cond_3
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_4
    move v0, v3

    goto :goto_1

    .line 2022
    :cond_5
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Luo;

    invoke-virtual {v0}, Luo;->d()Z

    move-result v0

    .line 2023
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->e:Luo;

    invoke-virtual {v4}, Luo;->e()Z

    move-result v4

    .line 2025
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->L:Landroid/view/VelocityTracker;

    if-nez v5, :cond_6

    .line 2026
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    iput-object v5, p0, Landroid/support/v7/widget/RecyclerView;->L:Landroid/view/VelocityTracker;

    .line 2028
    :cond_6
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->L:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2030
    invoke-static {p1}, Lfv;->a(Landroid/view/MotionEvent;)I

    move-result v5

    .line 2031
    invoke-static {p1}, Lfv;->b(Landroid/view/MotionEvent;)I

    move-result v6

    .line 2033
    packed-switch v5, :pswitch_data_0

    .line 2101
    :cond_7
    :goto_3
    :pswitch_0
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->J:I

    if-eq v0, v2, :cond_2

    move v2, v3

    goto :goto_2

    .line 2035
    :pswitch_1
    invoke-static {p1, v3}, Lfv;->b(Landroid/view/MotionEvent;I)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->K:I

    .line 2036
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    add-float/2addr v1, v8

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->O:I

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->M:I

    .line 2037
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    add-float/2addr v1, v8

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->P:I

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->N:I

    .line 2039
    iget v1, p0, Landroid/support/v7/widget/RecyclerView;->J:I

    const/4 v5, 0x2

    if-ne v1, v5, :cond_8

    .line 2040
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2041
    invoke-direct {p0, v2}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 2045
    :cond_8
    if-eqz v0, :cond_f

    move v0, v2

    .line 2048
    :goto_4
    if-eqz v4, :cond_9

    .line 2049
    or-int/lit8 v0, v0, 0x2

    .line 2051
    :cond_9
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->startNestedScroll(I)Z

    goto :goto_3

    .line 2055
    :pswitch_2
    invoke-static {p1, v6}, Lfv;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->K:I

    .line 2056
    invoke-static {p1, v6}, Lfv;->c(Landroid/view/MotionEvent;I)F

    move-result v0

    add-float/2addr v0, v8

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->O:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->M:I

    .line 2057
    invoke-static {p1, v6}, Lfv;->d(Landroid/view/MotionEvent;I)F

    move-result v0

    add-float/2addr v0, v8

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->P:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->N:I

    goto :goto_3

    .line 2061
    :pswitch_3
    iget v5, p0, Landroid/support/v7/widget/RecyclerView;->K:I

    invoke-static {p1, v5}, Lfv;->a(Landroid/view/MotionEvent;I)I

    move-result v5

    .line 2062
    if-gez v5, :cond_a

    .line 2063
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error processing scroll; pointer index for id "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/support/v7/widget/RecyclerView;->K:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v3

    .line 2065
    goto/16 :goto_2

    .line 2068
    :cond_a
    invoke-static {p1, v5}, Lfv;->c(Landroid/view/MotionEvent;I)F

    move-result v6

    add-float/2addr v6, v8

    float-to-int v6, v6

    .line 2069
    invoke-static {p1, v5}, Lfv;->d(Landroid/view/MotionEvent;I)F

    move-result v5

    add-float/2addr v5, v8

    float-to-int v5, v5

    .line 2070
    iget v7, p0, Landroid/support/v7/widget/RecyclerView;->J:I

    if-eq v7, v2, :cond_7

    .line 2071
    iget v7, p0, Landroid/support/v7/widget/RecyclerView;->M:I

    sub-int/2addr v6, v7

    .line 2072
    iget v7, p0, Landroid/support/v7/widget/RecyclerView;->N:I

    sub-int/2addr v5, v7

    .line 2074
    if-eqz v0, :cond_e

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v7, p0, Landroid/support/v7/widget/RecyclerView;->Q:I

    if-le v0, v7, :cond_e

    .line 2075
    iget v7, p0, Landroid/support/v7/widget/RecyclerView;->M:I

    iget v8, p0, Landroid/support/v7/widget/RecyclerView;->Q:I

    if-gez v6, :cond_c

    move v0, v1

    :goto_5
    mul-int/2addr v0, v8

    add-int/2addr v0, v7

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->O:I

    move v0, v2

    .line 2078
    :goto_6
    if-eqz v4, :cond_b

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v6, p0, Landroid/support/v7/widget/RecyclerView;->Q:I

    if-le v4, v6, :cond_b

    .line 2079
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->N:I

    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->Q:I

    if-gez v5, :cond_d

    :goto_7
    mul-int/2addr v1, v4

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->P:I

    move v0, v2

    .line 2082
    :cond_b
    if-eqz v0, :cond_7

    .line 2083
    invoke-direct {p0, v2}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    goto/16 :goto_3

    :cond_c
    move v0, v2

    .line 2075
    goto :goto_5

    :cond_d
    move v1, v2

    .line 2079
    goto :goto_7

    .line 2089
    :pswitch_4
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/view/MotionEvent;)V

    goto/16 :goto_3

    .line 2093
    :pswitch_5
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->L:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 2094
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->stopNestedScroll()V

    goto/16 :goto_3

    .line 2098
    :pswitch_6
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->q()V

    goto/16 :goto_3

    :cond_e
    move v0, v3

    goto :goto_6

    :cond_f
    move v0, v3

    goto/16 :goto_4

    .line 2033
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public onLayout(ZIIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2969
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->b()V

    .line 2970
    const-string v0, "RV OnLayout"

    invoke-static {v0}, Ld;->a(Ljava/lang/String;)V

    .line 2971
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->h()V

    .line 2972
    invoke-static {}, Ld;->a()V

    .line 2973
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->a(Z)V

    .line 2974
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->g:Z

    .line 2975
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 2316
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->F:Z

    if-eqz v0, :cond_0

    .line 2317
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->b()V

    .line 2318
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->v()V

    .line 2320
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Luv;

    iget-boolean v0, v0, Luv;->l:Z

    if-eqz v0, :cond_1

    .line 2325
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Luv;

    const/4 v1, 0x1

    iput-boolean v1, v0, Luv;->j:Z

    .line 2331
    :goto_0
    iput-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->F:Z

    .line 2332
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/RecyclerView;->a(Z)V

    .line 2335
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Luh;

    if-eqz v0, :cond_2

    .line 2336
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Luv;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->d:Luh;

    invoke-virtual {v1}, Luh;->a()I

    move-result v1

    iput v1, v0, Luv;->f:I

    .line 2340
    :goto_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Luo;

    if-nez v0, :cond_3

    .line 2341
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->d(II)V

    .line 2346
    :goto_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Luv;

    iput-boolean v3, v0, Luv;->j:Z

    .line 2347
    return-void

    .line 2328
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Lrx;

    invoke-virtual {v0}, Lrx;->e()V

    .line 2329
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Luv;

    iput-boolean v3, v0, Luv;->j:Z

    goto :goto_0

    .line 2338
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Luv;

    iput v3, v0, Luv;->f:I

    goto :goto_1

    .line 2343
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Luo;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->a:Lur;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->n:Luv;

    invoke-virtual {v0, v1, v2, p1, p2}, Luo;->a(Lur;Luv;II)V

    goto :goto_2
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter

    .prologue
    .line 966
    check-cast p1, Landroid/support/v7/widget/RecyclerView$SavedState;

    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/RecyclerView$SavedState;

    .line 967
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/RecyclerView$SavedState;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 968
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Luo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/RecyclerView$SavedState;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$SavedState;->a:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    .line 969
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Luo;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/RecyclerView$SavedState;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$SavedState;->a:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Luo;->a(Landroid/os/Parcelable;)V

    .line 971
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 952
    new-instance v0, Landroid/support/v7/widget/RecyclerView$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/RecyclerView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 953
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/RecyclerView$SavedState;

    if-eqz v1, :cond_0

    .line 954
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/RecyclerView$SavedState;

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView$SavedState;->a(Landroid/support/v7/widget/RecyclerView$SavedState;Landroid/support/v7/widget/RecyclerView$SavedState;)V

    .line 961
    :goto_0
    return-object v0

    .line 955
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->e:Luo;

    if-eqz v1, :cond_1

    .line 956
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->e:Luo;

    invoke-virtual {v1}, Luo;->c()Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/widget/RecyclerView$SavedState;->a:Landroid/os/Parcelable;

    goto :goto_0

    .line 958
    :cond_1
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/widget/RecyclerView$SavedState;->a:Landroid/os/Parcelable;

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2388
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 2389
    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    .line 2390
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->p()V

    .line 2392
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    const/high16 v10, 0x3f00

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2116
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->z:Ldd;

    if-eqz v4, :cond_0

    if-nez v0, :cond_1

    iput-object v5, p0, Landroid/support/v7/widget/RecyclerView;->z:Ldd;

    :cond_0
    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v4, v2

    :goto_0
    if-ge v4, v5, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->y:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldd;

    invoke-interface {v0}, Ldd;->c()Z

    move-result v6

    if-eqz v6, :cond_4

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->z:Ldd;

    move v0, v3

    :goto_1
    if-eqz v0, :cond_6

    .line 2117
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->q()V

    .line 2243
    :goto_2
    return v3

    .line 2116
    :cond_1
    const/4 v4, 0x3

    if-eq v0, v4, :cond_2

    if-ne v0, v3, :cond_3

    :cond_2
    iput-object v5, p0, Landroid/support/v7/widget/RecyclerView;->z:Ldd;

    :cond_3
    move v0, v3

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_1

    .line 2121
    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Luo;

    invoke-virtual {v0}, Luo;->d()Z

    move-result v5

    .line 2122
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Luo;

    invoke-virtual {v0}, Luo;->e()Z

    move-result v6

    .line 2124
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->L:Landroid/view/VelocityTracker;

    if-nez v0, :cond_7

    .line 2125
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->L:Landroid/view/VelocityTracker;

    .line 2127
    :cond_7
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->L:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2129
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v7

    .line 2130
    invoke-static {p1}, Lfv;->a(Landroid/view/MotionEvent;)I

    move-result v0

    .line 2131
    invoke-static {p1}, Lfv;->b(Landroid/view/MotionEvent;)I

    move-result v4

    .line 2133
    if-nez v0, :cond_8

    .line 2134
    iget-object v8, p0, Landroid/support/v7/widget/RecyclerView;->ai:[I

    iget-object v9, p0, Landroid/support/v7/widget/RecyclerView;->ai:[I

    aput v2, v9, v3

    aput v2, v8, v2

    .line 2136
    :cond_8
    iget-object v8, p0, Landroid/support/v7/widget/RecyclerView;->ai:[I

    aget v8, v8, v2

    int-to-float v8, v8

    iget-object v9, p0, Landroid/support/v7/widget/RecyclerView;->ai:[I

    aget v9, v9, v3

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2138
    packed-switch v0, :pswitch_data_0

    .line 2241
    :cond_9
    :goto_3
    :pswitch_0
    invoke-virtual {v7}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_2

    .line 2140
    :pswitch_1
    invoke-static {p1, v2}, Lfv;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->K:I

    .line 2141
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    add-float/2addr v0, v10

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->O:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->M:I

    .line 2142
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    add-float/2addr v0, v10

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->P:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->N:I

    .line 2145
    if-eqz v5, :cond_21

    move v0, v3

    .line 2148
    :goto_4
    if-eqz v6, :cond_a

    .line 2149
    or-int/lit8 v0, v0, 0x2

    .line 2151
    :cond_a
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->startNestedScroll(I)Z

    goto :goto_3

    .line 2155
    :pswitch_2
    invoke-static {p1, v4}, Lfv;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->K:I

    .line 2156
    invoke-static {p1, v4}, Lfv;->c(Landroid/view/MotionEvent;I)F

    move-result v0

    add-float/2addr v0, v10

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->O:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->M:I

    .line 2157
    invoke-static {p1, v4}, Lfv;->d(Landroid/view/MotionEvent;I)F

    move-result v0

    add-float/2addr v0, v10

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->P:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->N:I

    goto :goto_3

    .line 2161
    :pswitch_3
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->K:I

    invoke-static {p1, v0}, Lfv;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 2162
    if-gez v0, :cond_b

    .line 2163
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error processing scroll; pointer index for id "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/support/v7/widget/RecyclerView;->K:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v2

    .line 2165
    goto/16 :goto_2

    .line 2168
    :cond_b
    invoke-static {p1, v0}, Lfv;->c(Landroid/view/MotionEvent;I)F

    move-result v1

    add-float/2addr v1, v10

    float-to-int v8, v1

    .line 2169
    invoke-static {p1, v0}, Lfv;->d(Landroid/view/MotionEvent;I)F

    move-result v0

    add-float/2addr v0, v10

    float-to-int v9, v0

    .line 2170
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->O:I

    sub-int v1, v0, v8

    .line 2171
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->P:I

    sub-int/2addr v0, v9

    .line 2173
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->ah:[I

    iget-object v10, p0, Landroid/support/v7/widget/RecyclerView;->ag:[I

    invoke-virtual {p0, v1, v0, v4, v10}, Landroid/support/v7/widget/RecyclerView;->dispatchNestedPreScroll(II[I[I)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 2174
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->ah:[I

    aget v4, v4, v2

    sub-int/2addr v1, v4

    .line 2175
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->ah:[I

    aget v4, v4, v3

    sub-int/2addr v0, v4

    .line 2176
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->ag:[I

    aget v4, v4, v2

    int-to-float v4, v4

    iget-object v10, p0, Landroid/support/v7/widget/RecyclerView;->ag:[I

    aget v10, v10, v3

    int-to-float v10, v10

    invoke-virtual {v7, v4, v10}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2178
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->ai:[I

    aget v10, v4, v2

    iget-object v11, p0, Landroid/support/v7/widget/RecyclerView;->ag:[I

    aget v11, v11, v2

    add-int/2addr v10, v11

    aput v10, v4, v2

    .line 2179
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->ai:[I

    aget v10, v4, v3

    iget-object v11, p0, Landroid/support/v7/widget/RecyclerView;->ag:[I

    aget v11, v11, v3

    add-int/2addr v10, v11

    aput v10, v4, v3

    .line 2182
    :cond_c
    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->J:I

    if-eq v4, v3, :cond_e

    .line 2184
    if-eqz v5, :cond_20

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v10, p0, Landroid/support/v7/widget/RecyclerView;->Q:I

    if-le v4, v10, :cond_20

    .line 2185
    if-lez v1, :cond_f

    .line 2186
    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->Q:I

    sub-int/2addr v1, v4

    :goto_5
    move v4, v3

    .line 2192
    :goto_6
    if-eqz v6, :cond_d

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v10

    iget v11, p0, Landroid/support/v7/widget/RecyclerView;->Q:I

    if-le v10, v11, :cond_d

    .line 2193
    if-lez v0, :cond_10

    .line 2194
    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->Q:I

    sub-int/2addr v0, v4

    :goto_7
    move v4, v3

    .line 2200
    :cond_d
    if-eqz v4, :cond_e

    .line 2201
    invoke-direct {p0, v3}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 2205
    :cond_e
    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->J:I

    if-ne v4, v3, :cond_9

    .line 2206
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->ag:[I

    aget v4, v4, v2

    sub-int v4, v8, v4

    iput v4, p0, Landroid/support/v7/widget/RecyclerView;->O:I

    .line 2207
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->ag:[I

    aget v4, v4, v3

    sub-int v4, v9, v4

    iput v4, p0, Landroid/support/v7/widget/RecyclerView;->P:I

    .line 2209
    if-eqz v5, :cond_11

    :goto_8
    if-eqz v6, :cond_12

    :goto_9
    invoke-direct {p0, v1, v0, v7}, Landroid/support/v7/widget/RecyclerView;->a(IILandroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2213
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_3

    .line 2188
    :cond_f
    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->Q:I

    add-int/2addr v1, v4

    goto :goto_5

    .line 2196
    :cond_10
    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->Q:I

    add-int/2addr v0, v4

    goto :goto_7

    :cond_11
    move v1, v2

    .line 2209
    goto :goto_8

    :cond_12
    move v0, v2

    goto :goto_9

    .line 2219
    :pswitch_4
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/view/MotionEvent;)V

    goto/16 :goto_3

    .line 2223
    :pswitch_5
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->L:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    iget v8, p0, Landroid/support/v7/widget/RecyclerView;->S:I

    int-to-float v8, v8

    invoke-virtual {v0, v4, v8}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2224
    if-eqz v5, :cond_1a

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->L:Landroid/view/VelocityTracker;

    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->K:I

    invoke-static {v0, v4}, Lgo;->a(Landroid/view/VelocityTracker;I)F

    move-result v0

    neg-float v0, v0

    move v4, v0

    .line 2226
    :goto_a
    if-eqz v6, :cond_1b

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->L:Landroid/view/VelocityTracker;

    iget v5, p0, Landroid/support/v7/widget/RecyclerView;->K:I

    invoke-static {v0, v5}, Lgo;->b(Landroid/view/VelocityTracker;I)F

    move-result v0

    neg-float v0, v0

    .line 2228
    :goto_b
    cmpl-float v5, v4, v1

    if-nez v5, :cond_13

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_18

    :cond_13
    float-to-int v1, v4

    float-to-int v0, v0

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->e:Luo;

    if-eqz v4, :cond_1d

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->e:Luo;

    invoke-virtual {v4}, Luo;->d()Z

    move-result v5

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->e:Luo;

    invoke-virtual {v4}, Luo;->e()Z

    move-result v6

    if-eqz v5, :cond_14

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v8, p0, Landroid/support/v7/widget/RecyclerView;->R:I

    if-ge v4, v8, :cond_1f

    :cond_14
    move v4, v2

    :goto_c
    if-eqz v6, :cond_15

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v8, p0, Landroid/support/v7/widget/RecyclerView;->R:I

    if-ge v1, v8, :cond_1e

    :cond_15
    move v1, v2

    :goto_d
    if-nez v4, :cond_16

    if-eqz v1, :cond_1d

    :cond_16
    int-to-float v0, v4

    int-to-float v8, v1

    invoke-virtual {p0, v0, v8}, Landroid/support/v7/widget/RecyclerView;->dispatchNestedPreFling(FF)Z

    move-result v0

    if-nez v0, :cond_1d

    if-nez v5, :cond_17

    if-eqz v6, :cond_1c

    :cond_17
    move v0, v3

    :goto_e
    int-to-float v5, v4

    int-to-float v6, v1

    invoke-virtual {p0, v5, v6, v0}, Landroid/support/v7/widget/RecyclerView;->dispatchNestedFling(FFZ)Z

    if-eqz v0, :cond_1d

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->S:I

    neg-int v0, v0

    iget v5, p0, Landroid/support/v7/widget/RecyclerView;->S:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->S:I

    neg-int v4, v4

    iget v5, p0, Landroid/support/v7/widget/RecyclerView;->S:I

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->U:Luw;

    iget-object v5, v4, Luw;->e:Landroid/support/v7/widget/RecyclerView;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    iput v2, v4, Luw;->b:I

    iput v2, v4, Luw;->a:I

    iget-object v5, v4, Luw;->c:Llo;

    const/high16 v6, -0x8000

    const v8, 0x7fffffff

    invoke-virtual {v5, v0, v1, v6, v8}, Llo;->a(IIII)V

    invoke-virtual {v4}, Luw;->a()V

    move v0, v3

    :goto_f
    if-nez v0, :cond_19

    .line 2229
    :cond_18
    invoke-direct {p0, v2}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 2232
    :cond_19
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->L:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 2233
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->o()V

    goto/16 :goto_3

    :cond_1a
    move v4, v1

    .line 2224
    goto/16 :goto_a

    :cond_1b
    move v0, v1

    .line 2226
    goto/16 :goto_b

    :cond_1c
    move v0, v2

    .line 2228
    goto :goto_e

    :cond_1d
    move v0, v2

    goto :goto_f

    .line 2237
    :pswitch_6
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->q()V

    goto/16 :goto_3

    :cond_1e
    move v1, v0

    goto :goto_d

    :cond_1f
    move v4, v1

    goto :goto_c

    :cond_20
    move v4, v2

    goto/16 :goto_6

    :cond_21
    move v0, v2

    goto/16 :goto_4

    .line 2138
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public removeDetachedView(Landroid/view/View;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 2834
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Lux;

    move-result-object v0

    .line 2835
    if-eqz v0, :cond_0

    .line 2836
    invoke-virtual {v0}, Lux;->p()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2837
    invoke-virtual {v0}, Lux;->j()V

    .line 2843
    :cond_0
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->e(Landroid/view/View;)V

    .line 2844
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    .line 2845
    return-void

    .line 2838
    :cond_1
    invoke-virtual {v0}, Lux;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2839
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Called removeDetachedView with a view which is not flagged as tmp detached."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1829
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->t()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 1830
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->w:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v0, v2, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1835
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1836
    instance-of v3, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    if-eqz v3, :cond_0

    .line 1838
    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 1839
    iget-boolean v3, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->e:Z

    if-nez v3, :cond_0

    .line 1840
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->d:Landroid/graphics/Rect;

    .line 1841
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->w:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 1842
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->w:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 1843
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->w:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 1844
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->w:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v4

    iput v0, v3, Landroid/graphics/Rect;->bottom:I

    .line 1848
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->w:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v0}, Landroid/support/v7/widget/RecyclerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1849
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->w:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1850
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->w:Landroid/graphics/Rect;

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->g:Z

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {p0, p1, v3, v0}, Landroid/support/v7/widget/RecyclerView;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    .line 1852
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1853
    return-void

    :cond_2
    move v0, v2

    .line 1829
    goto :goto_0

    :cond_3
    move v0, v2

    .line 1850
    goto :goto_1
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 13
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1857
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->e:Luo;

    invoke-virtual {v3}, Luo;->o()I

    move-result v4

    invoke-virtual {v3}, Luo;->p()I

    move-result v5

    invoke-virtual {v3}, Luo;->m()I

    move-result v0

    invoke-virtual {v3}, Luo;->q()I

    move-result v1

    sub-int v6, v0, v1

    invoke-virtual {v3}, Luo;->n()I

    move-result v0

    invoke-virtual {v3}, Luo;->r()I

    move-result v1

    sub-int v7, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, p2, Landroid/graphics/Rect;->left:I

    add-int v8, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p2, Landroid/graphics/Rect;->top:I

    add-int v9, v0, v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    add-int v10, v8, v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int v11, v9, v0

    const/4 v0, 0x0

    sub-int v1, v8, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v0, 0x0

    sub-int v2, v9, v5

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v0, 0x0

    sub-int v12, v10, v6

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v12, 0x0

    sub-int v7, v11, v7

    invoke-static {v12, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    iget-object v3, v3, Luo;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Lgs;->h(Landroid/view/View;)I

    move-result v3

    const/4 v11, 0x1

    if-ne v3, v11, :cond_2

    if-eqz v0, :cond_1

    :goto_0
    move v1, v0

    :goto_1
    if-eqz v2, :cond_4

    move v0, v2

    :goto_2
    if-nez v1, :cond_0

    if-eqz v0, :cond_6

    :cond_0
    if-eqz p3, :cond_5

    invoke-virtual {p0, v1, v0}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    :goto_3
    const/4 v0, 0x1

    :goto_4
    return v0

    :cond_1
    sub-int v0, v10, v6

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    move v0, v1

    :goto_5
    move v1, v0

    goto :goto_1

    :cond_3
    sub-int v1, v8, v4

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_5

    :cond_4
    sub-int v0, v9, v5

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v1, v0}, Landroid/support/v7/widget/RecyclerView;->a(II)V

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 3
    .parameter

    .prologue
    .line 2106
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2107
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 2108
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->y:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2109
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2111
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 2112
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 2979
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->C:Z

    if-nez v0, :cond_0

    .line 2980
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 2984
    :goto_0
    return-void

    .line 2982
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->D:Z

    goto :goto_0
.end method

.method public scrollBy(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1306
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->e:Luo;

    if-nez v1, :cond_1

    .line 1316
    :cond_0
    :goto_0
    return-void

    .line 1311
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->e:Luo;

    invoke-virtual {v1}, Luo;->d()Z

    move-result v1

    .line 1312
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->e:Luo;

    invoke-virtual {v2}, Luo;->e()Z

    move-result v2

    .line 1313
    if-nez v1, :cond_2

    if-eqz v2, :cond_0

    .line 1314
    :cond_2
    if-eqz v1, :cond_3

    :goto_1
    if-eqz v2, :cond_4

    :goto_2
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView;->a(IILandroid/view/MotionEvent;)Z

    goto :goto_0

    :cond_3
    move p1, v0

    goto :goto_1

    :cond_4
    move p2, v0

    goto :goto_2
.end method

.method public scrollTo(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1300
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "RecyclerView does not support scrolling to an absolute position."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2472
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->t()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_3

    invoke-static {p1}, Lix;->b(Landroid/view/accessibility/AccessibilityEvent;)I

    move-result v1

    :goto_0
    if-nez v1, :cond_2

    :goto_1
    iget v1, p0, Landroid/support/v7/widget/RecyclerView;->E:I

    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->E:I

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_1

    .line 2476
    :goto_2
    return-void

    .line 2475
    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v1, v0

    goto :goto_0
.end method

.method public setAccessibilityDelegateCompat(Luy;)V
    .locals 1
    .parameter

    .prologue
    .line 459
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->ac:Luy;

    .line 460
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ac:Luy;

    invoke-static {p0, v0}, Lgs;->a(Landroid/view/View;Lel;)V

    .line 461
    return-void
.end method

.method public setAdapter(Luh;)V
    .locals 4
    .parameter

    .prologue
    .line 779
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Luh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Luh;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->s:Lus;

    iget-object v0, v0, Luh;->a:Lui;

    invoke-virtual {v0, v1}, Lui;->unregisterObserver(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Luk;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Luk;

    invoke-virtual {v0}, Luk;->d()V

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Luo;

    if-eqz v0, :cond_4

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->e:Luo;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->a:Lur;

    invoke-virtual {v1}, Luo;->l()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    invoke-virtual {v1, v0}, Luo;->c(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Lux;

    move-result-object v3

    invoke-virtual {v3}, Lux;->b()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1, v0, v2}, Luo;->a(ILur;)V

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Luo;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->a:Lur;

    invoke-virtual {v0, v1}, Luo;->b(Lur;)V

    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Lur;

    invoke-virtual {v0}, Lur;->a()V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Lrx;

    invoke-virtual {v0}, Lrx;->a()V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Luh;

    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->d:Luh;

    if-eqz p1, :cond_5

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->s:Lus;

    invoke-virtual {p1, v1}, Luh;->a(Luj;)V

    :cond_5
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->a:Lur;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->d:Luh;

    invoke-virtual {v1}, Lur;->a()V

    invoke-virtual {v1}, Lur;->c()Luq;

    move-result-object v1

    if-eqz v0, :cond_6

    invoke-virtual {v1}, Luq;->b()V

    :cond_6
    iget v0, v1, Luq;->c:I

    if-nez v0, :cond_7

    iget-object v0, v1, Luq;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    :cond_7
    if-eqz v2, :cond_8

    invoke-virtual {v1}, Luq;->a()V

    :cond_8
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Luv;

    const/4 v1, 0x1

    iput-boolean v1, v0, Luv;->i:Z

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->x()V

    .line 780
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 781
    return-void
.end method

.method public setChildDrawingOrderCallback$65aef0ea(Ldd;)V
    .locals 1
    .parameter

    .prologue
    .line 1199
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ad:Ldd;

    if-ne p1, v0, :cond_0

    .line 1204
    :goto_0
    return-void

    .line 1202
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->ad:Ldd;

    .line 1203
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ad:Ldd;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setChildrenDrawingOrderEnabled(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setClipToPadding(Z)V
    .locals 1
    .parameter

    .prologue
    .line 714
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->u:Z

    if-eq p1, v0, :cond_0

    .line 715
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->p()V

    .line 717
    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->u:Z

    .line 718
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 719
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->g:Z

    if-eqz v0, :cond_1

    .line 720
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 722
    :cond_1
    return-void
.end method

.method public setHasFixedSize(Z)V
    .locals 0
    .parameter

    .prologue
    .line 701
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->B:Z

    .line 702
    return-void
.end method

.method public setItemAnimator(Luk;)V
    .locals 2
    .parameter

    .prologue
    .line 2406
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Luk;

    if-eqz v0, :cond_0

    .line 2407
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Luk;

    invoke-virtual {v0}, Luk;->d()V

    .line 2408
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Luk;

    const/4 v1, 0x0

    iput-object v1, v0, Luk;->h:Lul;

    .line 2410
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->m:Luk;

    .line 2411
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Luk;

    if-eqz v0, :cond_1

    .line 2412
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Luk;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->aa:Lul;

    iput-object v1, v0, Luk;->h:Lul;

    .line 2414
    :cond_1
    return-void
.end method

.method public setItemViewCacheSize(I)V
    .locals 3
    .parameter

    .prologue
    .line 1089
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->a:Lur;

    iput p1, v1, Lur;->e:I

    iget-object v0, v1, Lur;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v2, v1, Lur;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, p1, :cond_0

    invoke-virtual {v1, v0}, Lur;->c(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1090
    :cond_0
    return-void
.end method

.method public setLayoutManager(Luo;)V
    .locals 5
    .parameter

    .prologue
    .line 923
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Luo;

    if-ne p1, v0, :cond_0

    .line 948
    :goto_0
    return-void

    .line 928
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Luo;

    if-eqz v0, :cond_2

    .line 929
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->A:Z

    if-eqz v0, :cond_1

    .line 930
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Luo;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->a:Lur;

    invoke-virtual {v0, p0, v1}, Luo;->a(Landroid/support/v7/widget/RecyclerView;Lur;)V

    .line 932
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Luo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Luo;->b(Landroid/support/v7/widget/RecyclerView;)V

    .line 934
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Lur;

    invoke-virtual {v0}, Lur;->a()V

    .line 935
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->c:Lsa;

    iget-object v0, v1, Lsa;->b:Lsb;

    :goto_1
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lsb;->a:J

    iget-object v2, v0, Lsb;->b:Lsb;

    if-eqz v2, :cond_3

    iget-object v0, v0, Lsb;->b:Lsb;

    goto :goto_1

    :cond_3
    iget-object v0, v1, Lsa;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v1, v1, Lsa;->a:Lsc;

    iget-object v0, v1, Lsc;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v2, :cond_4

    iget-object v3, v1, Lsc;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Lsc;->b(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/v7/widget/RecyclerView;->e(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    iget-object v0, v1, Lsc;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->removeAllViews()V

    .line 936
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->e:Luo;

    .line 937
    if-eqz p1, :cond_6

    .line 938
    iget-object v0, p1, Luo;->f:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_5

    .line 939
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LayoutManager "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is already attached to a RecyclerView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Luo;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 942
    :cond_5
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Luo;

    invoke-virtual {v0, p0}, Luo;->b(Landroid/support/v7/widget/RecyclerView;)V

    .line 943
    :cond_6
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    goto :goto_0
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1
    .parameter

    .prologue
    .line 8280
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->af:Lgb;

    invoke-virtual {v0, p1}, Lgb;->a(Z)V

    .line 8281
    return-void
.end method

.method public setOnScrollListener(Lup;)V
    .locals 0
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1216
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->V:Lup;

    .line 1217
    return-void
.end method

.method public setRecycledViewPool(Luq;)V
    .locals 2
    .parameter

    .prologue
    .line 1063
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Lur;

    iget-object v1, v0, Lur;->f:Luq;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lur;->f:Luq;

    invoke-virtual {v1}, Luq;->b()V

    :cond_0
    iput-object p1, v0, Lur;->f:Luq;

    if-eqz p1, :cond_1

    iget-object v1, v0, Lur;->f:Luq;

    iget-object v0, v0, Lur;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Luh;

    invoke-virtual {v1}, Luq;->a()V

    .line 1064
    :cond_1
    return-void
.end method

.method public setRecyclerListener$cc56996(Ldd;)V
    .locals 0
    .parameter

    .prologue
    .line 850
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->x:Ldd;

    .line 851
    return-void
.end method

.method public setScrollingTouchSlop(I)V
    .locals 3
    .parameter

    .prologue
    .line 734
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 735
    packed-switch p1, :pswitch_data_0

    .line 737
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setScrollingTouchSlop(): bad argument constant "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; using default value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    :pswitch_0
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->Q:I

    .line 748
    :goto_0
    return-void

    .line 745
    :pswitch_1
    invoke-static {v0}, Lhe;->a(Landroid/view/ViewConfiguration;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->Q:I

    goto :goto_0

    .line 735
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setViewCacheExtension$7dcbd027(Luu;)V
    .locals 1
    .parameter

    .prologue
    .line 1074
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Lur;

    iput-object p1, v0, Lur;->g:Luu;

    .line 1075
    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 1
    .parameter

    .prologue
    .line 8290
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->af:Lgb;

    invoke-virtual {v0, p1}, Lgb;->a(I)Z

    move-result v0

    return v0
.end method

.method public stopNestedScroll()V
    .locals 1

    .prologue
    .line 8295
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->af:Lgb;

    invoke-virtual {v0}, Lgb;->b()V

    .line 8296
    return-void
.end method
