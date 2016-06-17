.class public final Lepv;
.super Ljava/lang/Object;
.source "Headers.java"


# instance fields
.field private a:Lcom/wandoujia/net/Multimap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/wandoujia/net/Headers$1;

    invoke-direct {v0, p0}, Lcom/wandoujia/net/Headers$1;-><init>(Lepv;)V

    iput-object v0, p0, Lepv;->a:Lcom/wandoujia/net/Multimap;

    .line 18
    return-void
.end method

.method private a()Ljava/lang/StringBuilder;
    .locals 7

    .prologue
    .line 123
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v0, 0x100

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 124
    iget-object v0, p0, Lepv;->a:Lcom/wandoujia/net/Multimap;

    invoke-virtual {v0}, Lcom/wandoujia/net/Multimap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 125
    iget-object v1, p0, Lepv;->a:Lcom/wandoujia/net/Multimap;

    invoke-virtual {v1, v0}, Lcom/wandoujia/net/Multimap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/net/TaggedList;

    .line 126
    invoke-virtual {v0}, Lcom/wandoujia/net/TaggedList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 127
    invoke-virtual {v0}, Lcom/wandoujia/net/TaggedList;->tag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ": "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 133
    :cond_1
    const-string v0, "\r\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    return-object v3
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Lepv;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 45
    iget-object v1, p0, Lepv;->a:Lcom/wandoujia/net/Multimap;

    invoke-virtual {v1, v0, p2}, Lcom/wandoujia/net/Multimap;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v1, p0, Lepv;->a:Lcom/wandoujia/net/Multimap;

    invoke-virtual {v1, v0}, Lcom/wandoujia/net/Multimap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/net/TaggedList;

    .line 47
    invoke-virtual {v0, p1}, Lcom/wandoujia/net/TaggedList;->tagNull(Ljava/lang/Object;)V

    .line 48
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lepv;->a:Lcom/wandoujia/net/Multimap;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/net/Multimap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Lepv;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lepv;->a:Lcom/wandoujia/net/Multimap;

    invoke-virtual {v1, v0, p2}, Lcom/wandoujia/net/Multimap;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v1, p0, Lepv;->a:Lcom/wandoujia/net/Multimap;

    invoke-virtual {v1, v0}, Lcom/wandoujia/net/Multimap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/net/TaggedList;

    .line 55
    invoke-virtual {v0, p1}, Lcom/wandoujia/net/TaggedList;->tagNull(Ljava/lang/Object;)V

    .line 56
    return-object p0
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 98
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lepv;->a:Lcom/wandoujia/net/Multimap;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/wandoujia/net/Multimap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 99
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 100
    :cond_0
    const/4 v0, 0x0

    .line 101
    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 143
    invoke-direct {p0}, Lepv;->a()Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    invoke-direct {p0}, Lepv;->a()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
