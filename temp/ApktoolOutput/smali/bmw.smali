.class final Lbmw;
.super Ljava/lang/Object;

# interfaces
.implements Lbmx;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lbli;Ljava/util/Set;Ljava/util/Set;)V
    .locals 1
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

    iget-object v0, p1, Lbli;->c:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p1, Lbli;->d:Ljava/util/List;

    invoke-interface {p3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Lbmq;

    invoke-direct {v0}, Lbmq;-><init>()V

    new-instance v0, Lbmq;

    invoke-direct {v0}, Lbmq;-><init>()V

    return-void
.end method
