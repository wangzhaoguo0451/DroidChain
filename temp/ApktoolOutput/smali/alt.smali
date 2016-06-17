.class public abstract Lalt;
.super Ljava/lang/Object;
.source "AbstractDraweeControllerBuilder.java"

# interfaces
.implements Lamw;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<BUI",
        "LDER:Lalt",
        "<TBUI",
        "LDER;",
        "TREQUEST;TIMAGE;TINFO;>;REQUEST:",
        "Ljava/lang/Object;",
        "IMAGE:",
        "Ljava/lang/Object;",
        "INFO:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lamw;"
    }
.end annotation


# static fields
.field private static final c:Lalx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lalx",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/lang/NullPointerException;

.field private static final i:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field public a:Lalx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lalx",
            "<-TINFO;>;"
        }
    .end annotation
.end field

.field public b:Lamt;

.field private final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lalx;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TREQUEST;"
        }
    .end annotation
.end field

.field private g:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TREQUEST;"
        }
    .end annotation
.end field

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    new-instance v0, Lalu;

    invoke-direct {v0}, Lalu;-><init>()V

    sput-object v0, Lalt;->c:Lalx;

    .line 54
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "No image request was specified!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    sput-object v0, Lalt;->d:Ljava/lang/NullPointerException;

    .line 73
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lalt;->i:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lalx;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lalt;->e:Ljava/util/Set;

    .line 80
    iput-object v1, p0, Lalt;->f:Ljava/lang/Object;

    iput-object v1, p0, Lalt;->g:[Ljava/lang/Object;

    iput-object v1, p0, Lalt;->a:Lalx;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lalt;->h:Z

    iput-object v1, p0, Lalt;->b:Lamt;

    .line 81
    return-void
.end method

.method private a(Ljava/lang/Object;Z)Lakd;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TREQUEST;Z)",
            "Lakd",
            "<",
            "Lalb",
            "<TIMAGE;>;>;"
        }
    .end annotation

    .prologue
    .line 316
    new-instance v0, Lalv;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1, p2}, Lalv;-><init>(Lalt;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v0
.end method

.method public static e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 260
    sget-object v0, Lalt;->i:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;Ljava/lang/Object;Z)Lalb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TREQUEST;",
            "Ljava/lang/Object;",
            "Z)",
            "Lalb",
            "<TIMAGE;>;"
        }
    .end annotation
.end method

.method public abstract a()Lalt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBUI",
            "LDER;"
        }
    .end annotation
.end method

.method public final a(Lamt;)Lalt;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lamt;",
            ")TBUI",
            "LDER;"
        }
    .end annotation

    .prologue
    .line 215
    iput-object p1, p0, Lalt;->b:Lamt;

    .line 216
    invoke-virtual {p0}, Lalt;->a()Lalt;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Object;)Lalt;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TREQUEST;)TBUI",
            "LDER;"
        }
    .end annotation

    .prologue
    .line 116
    iput-object p1, p0, Lalt;->f:Ljava/lang/Object;

    .line 117
    invoke-virtual {p0}, Lalt;->a()Lalt;

    move-result-object v0

    return-object v0
.end method

.method public final a([Ljava/lang/Object;)Lalt;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TREQUEST;)TBUI",
            "LDER;"
        }
    .end annotation

    .prologue
    .line 144
    iput-object p1, p0, Lalt;->g:[Ljava/lang/Object;

    .line 145
    invoke-virtual {p0}, Lalt;->a()Lalt;

    move-result-object v0

    return-object v0
.end method

.method public abstract b()Lalq;
.end method

.method public final synthetic b(Lamt;)Lamw;
    .locals 1
    .parameter

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lalt;->a(Lamt;)Lalt;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lalt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBUI",
            "LDER;"
        }
    .end annotation

    .prologue
    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lalt;->h:Z

    .line 192
    invoke-virtual {p0}, Lalt;->a()Lalt;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lalq;
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 228
    iget-object v0, p0, Lalt;->g:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lalt;->f:Ljava/lang/Object;

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "Cannot specify both ImageRequest and FirstAvailableImageRequests!"

    invoke-static {v0, v2}, Ld;->b(ZLjava/lang/Object;)V

    const-string v0, "Cannot specify DataSourceSupplier with other ImageRequests! Use one or the other."

    invoke-static {v1, v0}, Ld;->b(ZLjava/lang/Object;)V

    .line 231
    invoke-virtual {p0}, Lalt;->b()Lalq;

    move-result-object v1

    iget-object v0, p0, Lalt;->e:Ljava/util/Set;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lalt;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lalx;

    invoke-virtual {v1, v0}, Lalq;->a(Lalx;)V

    goto :goto_1

    .line 228
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 231
    :cond_2
    iget-object v0, p0, Lalt;->a:Lalx;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lalt;->a:Lalx;

    invoke-virtual {v1, v0}, Lalq;->a(Lalx;)V

    :cond_3
    iget-boolean v0, p0, Lalt;->h:Z

    if-eqz v0, :cond_4

    sget-object v0, Lalt;->c:Lalx;

    invoke-virtual {v1, v0}, Lalq;->a(Lalx;)V

    :cond_4
    return-object v1
.end method

.method public final f()Lakd;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lakd",
            "<",
            "Lalb",
            "<TIMAGE;>;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 265
    const/4 v0, 0x0

    .line 272
    iget-object v2, p0, Lalt;->f:Ljava/lang/Object;

    if-eqz v2, :cond_2

    .line 273
    iget-object v0, p0, Lalt;->f:Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lalt;->a(Ljava/lang/Object;Z)Lakd;

    move-result-object v0

    .line 279
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 288
    sget-object v1, Lalt;->d:Ljava/lang/NullPointerException;

    new-instance v0, Lalc;

    invoke-direct {v0, v1}, Lalc;-><init>(Ljava/lang/Throwable;)V

    .line 291
    :cond_1
    return-object v0

    .line 274
    :cond_2
    iget-object v2, p0, Lalt;->g:[Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 275
    iget-object v2, p0, Lalt;->g:[Ljava/lang/Object;

    new-instance v3, Ljava/util/ArrayList;

    array-length v0, v2

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v0, v1

    :goto_1
    array-length v4, v2

    if-ge v0, v4, :cond_3

    aget-object v4, v2, v0

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lalt;->a(Ljava/lang/Object;Z)Lakd;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_2
    array-length v4, v2

    if-ge v0, v4, :cond_4

    aget-object v4, v2, v0

    invoke-direct {p0, v4, v1}, Lalt;->a(Ljava/lang/Object;Z)Lakd;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    new-instance v0, Lale;

    invoke-direct {v0, v3}, Lale;-><init>(Ljava/util/List;)V

    goto :goto_0
.end method

.method public final synthetic g()Lamt;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lalt;->d()Lalq;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic h()Lamw;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lalt;->a()Lalt;

    move-result-object v0

    return-object v0
.end method
