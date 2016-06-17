.class final Lcxt;
.super Lcwh;
.source "CollectionTypeAdapterFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcwh",
        "<",
        "Ljava/util/Collection",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field private final a:Lcwh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcwh",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final b:Lcxj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcxj",
            "<+",
            "Ljava/util/Collection",
            "<TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcvo;Ljava/lang/reflect/Type;Lcwh;Lcxj;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcvo;",
            "Ljava/lang/reflect/Type;",
            "Lcwh",
            "<TE;>;",
            "Lcxj",
            "<+",
            "Ljava/util/Collection",
            "<TE;>;>;)V"
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0}, Lcwh;-><init>()V

    .line 67
    new-instance v0, Lcyl;

    invoke-direct {v0, p1, p3, p2}, Lcyl;-><init>(Lcvo;Lcwh;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcxt;->a:Lcwh;

    .line 69
    iput-object p4, p0, Lcxt;->b:Lcxj;

    .line 70
    return-void
.end method


# virtual methods
.method public final synthetic a(Lczw;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 60
    invoke-virtual {p1}, Lczw;->f()Lcom/wandoujia/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/gson/stream/JsonToken;->NULL:Lcom/wandoujia/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lczw;->k()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcxt;->b:Lcxj;

    invoke-interface {v0}, Lcxj;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p1}, Lczw;->a()V

    :goto_1
    invoke-virtual {p1}, Lczw;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcxt;->a:Lcwh;

    invoke-virtual {v1, p1}, Lcwh;->a(Lczw;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lczw;->b()V

    goto :goto_0
.end method

.method public final synthetic a(Lczy;Ljava/lang/Object;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 60
    check-cast p2, Ljava/util/Collection;

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lczy;->e()Lczy;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lczy;->a()Lczy;

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcxt;->a:Lcwh;

    invoke-virtual {v2, p1, v1}, Lcwh;->a(Lczy;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lczy;->b()Lczy;

    goto :goto_0
.end method
