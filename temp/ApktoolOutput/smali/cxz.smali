.class final Lcxz;
.super Lcwh;
.source "MapTypeAdapterFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcwh",
        "<",
        "Ljava/util/Map",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final a:Lcwh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcwh",
            "<TK;>;"
        }
    .end annotation
.end field

.field private final b:Lcwh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcwh",
            "<TV;>;"
        }
    .end annotation
.end field

.field private final c:Lcxj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcxj",
            "<+",
            "Ljava/util/Map",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private synthetic d:Lcxy;


# direct methods
.method public constructor <init>(Lcxy;Lcvo;Ljava/lang/reflect/Type;Lcwh;Ljava/lang/reflect/Type;Lcwh;Lcxj;)V
    .locals 1
    .parameter
    .parameter
    .parameter
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
            "<TK;>;",
            "Ljava/lang/reflect/Type;",
            "Lcwh",
            "<TV;>;",
            "Lcxj",
            "<+",
            "Ljava/util/Map",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 152
    iput-object p1, p0, Lcxz;->d:Lcxy;

    invoke-direct {p0}, Lcwh;-><init>()V

    .line 153
    new-instance v0, Lcyl;

    invoke-direct {v0, p2, p4, p3}, Lcyl;-><init>(Lcvo;Lcwh;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcxz;->a:Lcwh;

    .line 155
    new-instance v0, Lcyl;

    invoke-direct {v0, p2, p6, p5}, Lcyl;-><init>(Lcvo;Lcwh;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcxz;->b:Lcwh;

    .line 157
    iput-object p7, p0, Lcxz;->c:Lcxj;

    .line 158
    return-void
.end method


# virtual methods
.method public final synthetic a(Lczw;)Ljava/lang/Object;
    .locals 4
    .parameter

    .prologue
    .line 145
    invoke-virtual {p1}, Lczw;->f()Lcom/wandoujia/gson/stream/JsonToken;

    move-result-object v1

    sget-object v0, Lcom/wandoujia/gson/stream/JsonToken;->NULL:Lcom/wandoujia/gson/stream/JsonToken;

    if-ne v1, v0, :cond_0

    invoke-virtual {p1}, Lczw;->k()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcxz;->c:Lcxj;

    invoke-interface {v0}, Lcxj;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    sget-object v2, Lcom/wandoujia/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/wandoujia/gson/stream/JsonToken;

    if-ne v1, v2, :cond_3

    invoke-virtual {p1}, Lczw;->a()V

    :goto_1
    invoke-virtual {p1}, Lczw;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lczw;->a()V

    iget-object v1, p0, Lcxz;->a:Lcwh;

    invoke-virtual {v1, p1}, Lcwh;->a(Lczw;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcxz;->b:Lcwh;

    invoke-virtual {v2, p1}, Lcwh;->a(Lczw;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v0, Lcom/wandoujia/gson/JsonSyntaxException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "duplicate key: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/wandoujia/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Lczw;->b()V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lczw;->b()V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lczw;->c()V

    :cond_4
    invoke-virtual {p1}, Lczw;->e()Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcxb;->a:Lcxb;

    invoke-virtual {v1, p1}, Lcxb;->a(Lczw;)V

    iget-object v1, p0, Lcxz;->a:Lcwh;

    invoke-virtual {v1, p1}, Lcwh;->a(Lczw;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcxz;->b:Lcwh;

    invoke-virtual {v2, p1}, Lcwh;->a(Lczw;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    new-instance v0, Lcom/wandoujia/gson/JsonSyntaxException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "duplicate key: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/wandoujia/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-virtual {p1}, Lczw;->d()V

    goto :goto_0
.end method

.method public final synthetic a(Lczy;Ljava/lang/Object;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 145
    check-cast p2, Ljava/util/Map;

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lczy;->e()Lczy;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lczy;->c()Lczy;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lczy;->a(Ljava/lang/String;)Lczy;

    iget-object v2, p0, Lcxz;->b:Lcwh;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Lcwh;->a(Lczy;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lczy;->d()Lczy;

    goto :goto_0
.end method
