.class final Lbmv;
.super Ljava/lang/Object;

# interfaces
.implements Lbmx;


# instance fields
.field private synthetic a:Ljava/util/Map;

.field private synthetic b:Ljava/util/Map;

.field private synthetic c:Ljava/util/Map;

.field private synthetic d:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lbmv;->a:Ljava/util/Map;

    iput-object p2, p0, Lbmv;->b:Ljava/util/Map;

    iput-object p3, p0, Lbmv;->c:Ljava/util/Map;

    iput-object p4, p0, Lbmv;->d:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lbli;Ljava/util/Set;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbli;",
            "Ljava/util/Set",
            "<",
            "Lblh;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lblh;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lbmv;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lbmv;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-interface {p2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Lbmq;

    invoke-direct {v0}, Lbmq;-><init>()V

    :cond_0
    iget-object v0, p0, Lbmv;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lbmv;->d:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_1

    invoke-interface {p3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Lbmq;

    invoke-direct {v0}, Lbmq;-><init>()V

    :cond_1
    return-void
.end method
