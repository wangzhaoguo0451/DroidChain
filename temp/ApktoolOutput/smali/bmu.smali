.class public final Lbmu;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lbmo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbmo",
            "<",
            "Lbjs;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Ldd;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lbmi;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lbmi;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lbmi;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ldd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldd",
            "<",
            "Lblh;",
            "Lbmo",
            "<",
            "Lbjs;",
            ">;>;"
        }
    .end annotation
.end field

.field private final g:Ldd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldd",
            "<",
            "Ljava/lang/String;",
            "Lbmy;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lbli;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lblw;

.field private final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lahz;",
            ">;"
        }
    .end annotation
.end field

.field private volatile k:Ljava/lang/String;

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lbmo;

    invoke-static {}, Lbne;->a()Lbjs;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lbmo;-><init>(Ljava/lang/Object;Z)V

    sput-object v0, Lbmu;->a:Lbmo;

    return-void
.end method

.method private a(Lblh;Ljava/util/Set;)Lbmo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lblh;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lbmo",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lbmu;->d:Ljava/util/Map;

    invoke-direct {p0, v0, p1, p2}, Lbmu;->a(Ljava/util/Map;Lblh;Ljava/util/Set;)Lbmo;

    move-result-object v1

    iget-object v0, v1, Lbmo;->a:Ljava/lang/Object;

    check-cast v0, Lbjs;

    invoke-static {v0}, Lbne;->b(Lbjs;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lbne;->a(Ljava/lang/Object;)Lbjs;

    new-instance v2, Lbmo;

    iget-boolean v1, v1, Lbmo;->b:Z

    invoke-direct {v2, v0, v1}, Lbmo;-><init>(Ljava/lang/Object;Z)V

    return-object v2
.end method

.method private a(Lbli;Ljava/util/Set;)Lbmo;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbli;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lbmo",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p1, Lbli;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lblh;

    new-instance v5, Lbmp;

    invoke-direct {v5}, Lbmp;-><init>()V

    invoke-direct {p0, v0, p2}, Lbmu;->a(Lblh;Ljava/util/Set;)Lbmo;

    move-result-object v5

    iget-object v0, v5, Lbmo;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lbne;->a(Ljava/lang/Object;)Lbjs;

    new-instance v0, Lbmo;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, v5, Lbmo;->b:Z

    invoke-direct {v0, v1, v2}, Lbmo;-><init>(Ljava/lang/Object;Z)V

    :goto_1
    return-object v0

    :cond_0
    if-eqz v1, :cond_1

    iget-boolean v0, v5, Lbmo;->b:Z

    if-eqz v0, :cond_1

    move v0, v2

    :goto_2
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_2

    :cond_2
    iget-object v0, p1, Lbli;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lblh;

    new-instance v5, Lbmp;

    invoke-direct {v5}, Lbmp;-><init>()V

    invoke-direct {p0, v0, p2}, Lbmu;->a(Lblh;Ljava/util/Set;)Lbmo;

    move-result-object v5

    iget-object v0, v5, Lbmo;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lbne;->a(Ljava/lang/Object;)Lbjs;

    new-instance v0, Lbmo;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, v5, Lbmo;->b:Z

    invoke-direct {v0, v1, v2}, Lbmo;-><init>(Ljava/lang/Object;Z)V

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    iget-boolean v0, v5, Lbmo;->b:Z

    if-eqz v0, :cond_4

    move v1, v2

    goto :goto_3

    :cond_4
    move v1, v3

    goto :goto_3

    :cond_5
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lbne;->a(Ljava/lang/Object;)Lbjs;

    new-instance v0, Lbmo;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lbmo;-><init>(Ljava/lang/Object;Z)V

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Ljava/util/Set;)Lbmo;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lbmo",
            "<",
            "Lbjs;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x1

    iget v0, p0, Lbmu;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbmu;->l:I

    iget-object v0, p0, Lbmu;->g:Ldd;

    invoke-interface {v0}, Ldd;->k()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbmy;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lbmu;->b:Ldd;

    invoke-interface {v1}, Ldd;->j()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lbmy;->b:Lbjs;

    invoke-direct {p0, v1, p2}, Lbmu;->a(Lbjs;Ljava/util/Set;)V

    iget v1, p0, Lbmu;->l:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lbmu;->l:I

    iget-object v0, v0, Lbmy;->a:Lbmo;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lbmu;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lahz;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lbmu;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Invalid macro: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lbml;->a()V

    iget v0, p0, Lbmu;->l:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lbmu;->l:I

    sget-object v0, Lbmu;->a:Lbmo;

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lahz;->b:Ljava/util/Set;

    iget-object v2, v0, Lahz;->c:Ljava/util/Map;

    iget-object v3, v0, Lahz;->e:Ljava/util/Map;

    iget-object v4, v0, Lahz;->d:Ljava/util/Map;

    iget-object v5, v0, Lahz;->f:Ljava/util/Map;

    new-instance v0, Lbmt;

    invoke-direct {v0}, Lbmt;-><init>()V

    move-object v0, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lbmu;->a(Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;)Lbmo;

    move-result-object v1

    iget-object v0, v1, Lbmo;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    move-object v2, v0

    :goto_1
    if-nez v2, :cond_4

    iget v0, p0, Lbmu;->l:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lbmu;->l:I

    sget-object v0, Lbmu;->a:Lbmo;

    goto :goto_0

    :cond_2
    iget-object v0, v1, Lbmo;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-le v0, v7, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lbmu;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "Multiple macros active for macroName "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lbml;->c()V

    :cond_3
    iget-object v0, v1, Lbmo;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lblh;

    move-object v2, v0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lbmu;->e:Ljava/util/Map;

    new-instance v3, Lbmp;

    invoke-direct {v3}, Lbmp;-><init>()V

    invoke-direct {p0, v0, v2, p2}, Lbmu;->a(Ljava/util/Map;Lblh;Ljava/util/Set;)Lbmo;

    move-result-object v3

    iget-boolean v0, v1, Lbmo;->b:Z

    if-eqz v0, :cond_6

    iget-boolean v0, v3, Lbmo;->b:Z

    if-eqz v0, :cond_6

    move v0, v7

    :goto_2
    sget-object v1, Lbmu;->a:Lbmo;

    if-ne v3, v1, :cond_7

    sget-object v0, Lbmu;->a:Lbmo;

    :goto_3
    iget-object v1, v2, Lblh;->b:Lbjs;

    iget-boolean v2, v0, Lbmo;->b:Z

    if-eqz v2, :cond_5

    new-instance v2, Lbmy;

    invoke-direct {v2, v0, v1}, Lbmy;-><init>(Lbmo;Lbjs;)V

    :cond_5
    invoke-direct {p0, v1, p2}, Lbmu;->a(Lbjs;Ljava/util/Set;)V

    iget v1, p0, Lbmu;->l:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lbmu;->l:I

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    :cond_7
    new-instance v1, Lbmo;

    iget-object v3, v3, Lbmo;->a:Ljava/lang/Object;

    invoke-direct {v1, v3, v0}, Lbmo;-><init>(Ljava/lang/Object;Z)V

    move-object v0, v1

    goto :goto_3
.end method

.method private a(Ljava/util/Map;Lblh;Ljava/util/Set;)Lbmo;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lbmi;",
            ">;",
            "Lblh;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lbmo",
            "<",
            "Lbjs;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v0, p2, Lblh;->a:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzae;->zzfg:Lcom/google/android/gms/internal/zzae;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzae;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbjs;

    if-nez v0, :cond_1

    invoke-static {}, Lbml;->a()V

    sget-object v1, Lbmu;->a:Lbmo;

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v7, v0, Lbjs;->g:Ljava/lang/String;

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbmi;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " has no backing implementation."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lbml;->a()V

    sget-object v1, Lbmu;->a:Lbmo;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lbmu;->f:Ldd;

    invoke-interface {v1}, Ldd;->k()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbmo;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lbmu;->b:Ldd;

    invoke-interface {v2}, Ldd;->j()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p2, Lblh;->a:Ljava/util/Map;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v4, v5

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    new-instance v2, Lbmr;

    invoke-direct {v2}, Lbmr;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbjs;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    new-instance v3, Lbnf;

    invoke-direct {v3}, Lbnf;-><init>()V

    invoke-direct {p0, v2, p3}, Lbmu;->b(Lbjs;Ljava/util/Set;)Lbmo;

    move-result-object v10

    sget-object v2, Lbmu;->a:Lbmo;

    if-ne v10, v2, :cond_4

    sget-object v1, Lbmu;->a:Lbmo;

    goto :goto_0

    :cond_4
    iget-boolean v2, v10, Lbmo;->b:Z

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, v10, Lbmo;->a:Ljava/lang/Object;

    check-cast v3, Lbjs;

    iget-object v11, p2, Lblh;->a:Ljava/util/Map;

    invoke-interface {v11, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v2, v4

    :goto_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iget-object v3, v10, Lbmo;->a:Ljava/lang/Object;

    invoke-interface {v8, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v4, v2

    goto :goto_1

    :cond_5
    move v2, v6

    goto :goto_2

    :cond_6
    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    iget-object v2, v0, Lbmi;->a:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Incorrect keys for function "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " required "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lbmi;->a:Ljava/util/Set;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " had "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lbml;->a()V

    sget-object v1, Lbmu;->a:Lbmo;

    goto/16 :goto_0

    :cond_7
    if-eqz v4, :cond_8

    :goto_3
    new-instance v1, Lbmo;

    invoke-virtual {v0, v8}, Lbmi;->a(Ljava/util/Map;)Lbjs;

    move-result-object v0

    invoke-direct {v1, v0, v5}, Lbmo;-><init>(Ljava/lang/Object;Z)V

    goto/16 :goto_0

    :cond_8
    move v5, v6

    goto :goto_3
.end method

.method private a(Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;)Lbmo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lbli;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lbli;",
            "Ljava/util/List",
            "<",
            "Lblh;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Lbli;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Lbli;",
            "Ljava/util/List",
            "<",
            "Lblh;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Lbli;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lbmo",
            "<",
            "Ljava/util/Set",
            "<",
            "Lblh;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lbmv;

    invoke-direct {v0, p2, p3, p4, p5}, Lbmv;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    invoke-direct {p0, p1, p6, v0}, Lbmu;->a(Ljava/util/Set;Ljava/util/Set;Lbmx;)Lbmo;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/Set;Ljava/util/Set;Lbmx;)Lbmo;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lbli;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lbmx;",
            ")",
            "Lbmo",
            "<",
            "Ljava/util/Set",
            "<",
            "Lblh;",
            ">;>;"
        }
    .end annotation

    const/4 v3, 0x1

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v3

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbli;

    new-instance v1, Lbms;

    invoke-direct {v1}, Lbms;-><init>()V

    invoke-direct {p0, v0, p2}, Lbmu;->a(Lbli;Ljava/util/Set;)Lbmo;

    move-result-object v7

    iget-object v1, v7, Lbmo;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p3, v0, v4, v5}, Lbmx;->a(Lbli;Ljava/util/Set;Ljava/util/Set;)V

    :cond_0
    if-eqz v2, :cond_1

    iget-boolean v0, v7, Lbmo;->b:Z

    if-eqz v0, :cond_1

    move v0, v3

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    invoke-interface {v4, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    new-instance v0, Lbmo;

    invoke-direct {v0, v4, v2}, Lbmo;-><init>(Ljava/lang/Object;Z)V

    return-object v0
.end method

.method private a()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lbmu;->l:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lbmu;->l:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    :goto_1
    iget v2, p0, Lbmu;->l:I

    if-ge v0, v2, :cond_1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Lbjs;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbjs;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lbnf;

    invoke-direct {v0}, Lbnf;-><init>()V

    invoke-direct {p0, p1, p2}, Lbmu;->b(Lbjs;Ljava/util/Set;)Lbmo;

    move-result-object v0

    sget-object v1, Lbmu;->a:Lbmo;

    if-eq v0, v1, :cond_0

    iget-object v0, v0, Lbmo;->a:Ljava/lang/Object;

    check-cast v0, Lbjs;

    invoke-static {v0}, Lbne;->c(Lbjs;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lbmu;->i:Lblw;

    invoke-virtual {v1, v0}, Lblw;->a(Ljava/util/Map;)V

    goto :goto_0

    :cond_2
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_4

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/util/Map;

    if-eqz v2, :cond_3

    check-cast v0, Ljava/util/Map;

    iget-object v2, p0, Lbmu;->i:Lblw;

    invoke-virtual {v2, v0}, Lblw;->a(Ljava/util/Map;)V

    goto :goto_1

    :cond_3
    invoke-static {}, Lbml;->c()V

    goto :goto_1

    :cond_4
    invoke-static {}, Lbml;->c()V

    goto :goto_0
.end method

.method private b(Lbjs;Ljava/util/Set;)Lbmo;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbjs;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lbmo",
            "<",
            "Lbjs;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    iget-boolean v0, p1, Lbjs;->l:Z

    if-nez v0, :cond_0

    new-instance v0, Lbmo;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lbmo;-><init>(Ljava/lang/Object;Z)V

    :goto_0
    return-object v0

    :cond_0
    iget v0, p1, Lbjs;->a:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lbjs;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lbml;->a()V

    sget-object v0, Lbmu;->a:Lbmo;

    goto :goto_0

    :pswitch_1
    invoke-static {p1}, Ld;->a(Lbjs;)Lbjs;

    move-result-object v3

    iget-object v0, p1, Lbjs;->c:[Lbjs;

    array-length v0, v0

    new-array v0, v0, [Lbjs;

    iput-object v0, v3, Lbjs;->c:[Lbjs;

    move v1, v2

    :goto_1
    iget-object v0, p1, Lbjs;->c:[Lbjs;

    array-length v0, v0

    if-ge v1, v0, :cond_2

    iget-object v0, p1, Lbjs;->c:[Lbjs;

    aget-object v0, v0, v1

    new-instance v4, Lbnf;

    invoke-direct {v4}, Lbnf;-><init>()V

    invoke-direct {p0, v0, p2}, Lbmu;->b(Lbjs;Ljava/util/Set;)Lbmo;

    move-result-object v0

    sget-object v4, Lbmu;->a:Lbmo;

    if-ne v0, v4, :cond_1

    sget-object v0, Lbmu;->a:Lbmo;

    goto :goto_0

    :cond_1
    iget-object v4, v3, Lbjs;->c:[Lbjs;

    iget-object v0, v0, Lbmo;->a:Ljava/lang/Object;

    check-cast v0, Lbjs;

    aput-object v0, v4, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    new-instance v0, Lbmo;

    invoke-direct {v0, v3, v2}, Lbmo;-><init>(Ljava/lang/Object;Z)V

    goto :goto_0

    :pswitch_2
    invoke-static {p1}, Ld;->a(Lbjs;)Lbjs;

    move-result-object v3

    iget-object v0, p1, Lbjs;->d:[Lbjs;

    array-length v0, v0

    iget-object v1, p1, Lbjs;->e:[Lbjs;

    array-length v1, v1

    if-eq v0, v1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid serving value: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lbjs;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lbml;->a()V

    sget-object v0, Lbmu;->a:Lbmo;

    goto :goto_0

    :cond_3
    iget-object v0, p1, Lbjs;->d:[Lbjs;

    array-length v0, v0

    new-array v0, v0, [Lbjs;

    iput-object v0, v3, Lbjs;->d:[Lbjs;

    iget-object v0, p1, Lbjs;->d:[Lbjs;

    array-length v0, v0

    new-array v0, v0, [Lbjs;

    iput-object v0, v3, Lbjs;->e:[Lbjs;

    move v1, v2

    :goto_2
    iget-object v0, p1, Lbjs;->d:[Lbjs;

    array-length v0, v0

    if-ge v1, v0, :cond_6

    iget-object v0, p1, Lbjs;->d:[Lbjs;

    aget-object v0, v0, v1

    new-instance v4, Lbnf;

    invoke-direct {v4}, Lbnf;-><init>()V

    invoke-direct {p0, v0, p2}, Lbmu;->b(Lbjs;Ljava/util/Set;)Lbmo;

    move-result-object v0

    iget-object v4, p1, Lbjs;->e:[Lbjs;

    aget-object v4, v4, v1

    new-instance v5, Lbnf;

    invoke-direct {v5}, Lbnf;-><init>()V

    invoke-direct {p0, v4, p2}, Lbmu;->b(Lbjs;Ljava/util/Set;)Lbmo;

    move-result-object v4

    sget-object v5, Lbmu;->a:Lbmo;

    if-eq v0, v5, :cond_4

    sget-object v5, Lbmu;->a:Lbmo;

    if-ne v4, v5, :cond_5

    :cond_4
    sget-object v0, Lbmu;->a:Lbmo;

    goto/16 :goto_0

    :cond_5
    iget-object v5, v3, Lbjs;->d:[Lbjs;

    iget-object v0, v0, Lbmo;->a:Ljava/lang/Object;

    check-cast v0, Lbjs;

    aput-object v0, v5, v1

    iget-object v5, v3, Lbjs;->e:[Lbjs;

    iget-object v0, v4, Lbmo;->a:Ljava/lang/Object;

    check-cast v0, Lbjs;

    aput-object v0, v5, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_6
    new-instance v0, Lbmo;

    invoke-direct {v0, v3, v2}, Lbmo;-><init>(Ljava/lang/Object;Z)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p1, Lbjs;->f:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Macro cycle detected.  Current macro reference: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lbjs;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".  Previous macro references: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lbml;->a()V

    sget-object v0, Lbmu;->a:Lbmo;

    goto/16 :goto_0

    :cond_7
    iget-object v0, p1, Lbjs;->f:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p1, Lbjs;->f:Ljava/lang/String;

    new-instance v1, Lbmn;

    invoke-direct {v1}, Lbmn;-><init>()V

    invoke-direct {p0, v0, p2}, Lbmu;->a(Ljava/lang/String;Ljava/util/Set;)Lbmo;

    move-result-object v0

    iget-object v1, p1, Lbjs;->k:[I

    invoke-static {v0, v1}, Ld;->a(Lbmo;[I)Lbmo;

    move-result-object v0

    iget-object v1, p1, Lbjs;->f:Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_4
    invoke-static {p1}, Ld;->a(Lbjs;)Lbjs;

    move-result-object v3

    iget-object v0, p1, Lbjs;->j:[Lbjs;

    array-length v0, v0

    new-array v0, v0, [Lbjs;

    iput-object v0, v3, Lbjs;->j:[Lbjs;

    move v1, v2

    :goto_3
    iget-object v0, p1, Lbjs;->j:[Lbjs;

    array-length v0, v0

    if-ge v1, v0, :cond_9

    iget-object v0, p1, Lbjs;->j:[Lbjs;

    aget-object v0, v0, v1

    new-instance v4, Lbnf;

    invoke-direct {v4}, Lbnf;-><init>()V

    invoke-direct {p0, v0, p2}, Lbmu;->b(Lbjs;Ljava/util/Set;)Lbmo;

    move-result-object v0

    sget-object v4, Lbmu;->a:Lbmo;

    if-ne v0, v4, :cond_8

    sget-object v0, Lbmu;->a:Lbmo;

    goto/16 :goto_0

    :cond_8
    iget-object v4, v3, Lbjs;->j:[Lbjs;

    iget-object v0, v0, Lbmo;->a:Ljava/lang/Object;

    check-cast v0, Lbjs;

    aput-object v0, v4, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_9
    new-instance v0, Lbmo;

    invoke-direct {v0, v3, v2}, Lbmo;-><init>(Ljava/lang/Object;Z)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private declared-synchronized b(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lbmu;->k:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lbmu;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lbmu;->h:Ljava/util/Set;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    new-instance v2, Lbmw;

    invoke-direct {v2}, Lbmw;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lbmu;->a(Ljava/util/Set;Ljava/util/Set;Lbmx;)Lbmo;

    move-result-object v0

    iget-object v0, v0, Lbmo;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lblh;

    iget-object v2, p0, Lbmu;->c:Ljava/util/Map;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, v2, v0, v3}, Lbmu;->a(Ljava/util/Map;Lblh;Ljava/util/Set;)Lbmo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, v0}, Lbmu;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method
