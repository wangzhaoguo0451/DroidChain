.class public final Lcom/squareup/wire/Wire;
.super Ljava/lang/Object;
.source "Wire.java"


# instance fields
.field private final builderAdapters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/squareup/wire/Message$Builder;",
            ">;",
            "Lcan",
            "<+",
            "Lcom/squareup/wire/Message$Builder;",
            ">;>;"
        }
    .end annotation
.end field

.field private final enumAdapters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/squareup/wire/ProtoEnum;",
            ">;",
            "Lcap",
            "<+",
            "Lcom/squareup/wire/ProtoEnum;",
            ">;>;"
        }
    .end annotation
.end field

.field private final messageAdapters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/squareup/wire/Message;",
            ">;",
            "Lcom/squareup/wire/MessageAdapter",
            "<+",
            "Lcom/squareup/wire/Message;",
            ">;>;"
        }
    .end annotation
.end field

.field final registry:Lcas;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/squareup/wire/Wire;->messageAdapters:Ljava/util/Map;

    .line 33
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/squareup/wire/Wire;->builderAdapters:Ljava/util/Map;

    .line 36
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/squareup/wire/Wire;->enumAdapters:Ljava/util/Map;

    .line 57
    new-instance v0, Lcas;

    invoke-direct {v0}, Lcas;-><init>()V

    iput-object v0, p0, Lcom/squareup/wire/Wire;->registry:Lcas;

    .line 58
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 59
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    array-length v6, v5

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v6, :cond_0

    aget-object v0, v5, v3

    .line 60
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/squareup/wire/Extension;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 62
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Extension;

    .line 63
    iget-object v7, p0, Lcom/squareup/wire/Wire;->registry:Lcas;

    invoke-virtual {v0}, Lcom/squareup/wire/Extension;->getExtendedType()Ljava/lang/Class;

    move-result-object v8

    iget-object v1, v7, Lcas;->a:Ljava/util/Map;

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    iget-object v2, v7, Lcas;->b:Ljava/util/Map;

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v9, v7, Lcas;->a:Ljava/util/Map;

    invoke-interface {v9, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v7, Lcas;->b:Ljava/util/Map;

    invoke-interface {v7, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0}, Lcom/squareup/wire/Extension;->getTag()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/squareup/wire/Extension;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 70
    :cond_3
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/Class;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/squareup/wire/Wire;-><init>(Ljava/util/List;)V

    .line 49
    return-void
.end method

.method public static get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .prologue
    .line 171
    if-eqz p0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    move-object p0, p1

    goto :goto_0
.end method

.method private parseFrom(Lcbh;Ljava/lang/Class;)Lcom/squareup/wire/Message;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/squareup/wire/Message;",
            ">(",
            "Lcbh;",
            "Ljava/lang/Class",
            "<TM;>;)TM;"
        }
    .end annotation

    .prologue
    .line 151
    invoke-virtual {p0, p2}, Lcom/squareup/wire/Wire;->messageAdapter(Ljava/lang/Class;)Lcom/squareup/wire/MessageAdapter;

    move-result-object v0

    .line 152
    invoke-virtual {v0, p1}, Lcom/squareup/wire/MessageAdapter;->a(Lcbh;)Lcom/squareup/wire/Message;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method final declared-synchronized builderAdapter(Ljava/lang/Class;)Lcan;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Lcom/squareup/wire/Message$Builder;",
            ">(",
            "Ljava/lang/Class",
            "<TB;>;)",
            "Lcan",
            "<TB;>;"
        }
    .end annotation

    .prologue
    .line 91
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/squareup/wire/Wire;->builderAdapters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcan;

    .line 92
    if-nez v0, :cond_0

    .line 93
    new-instance v0, Lcan;

    invoke-direct {v0, p1}, Lcan;-><init>(Ljava/lang/Class;)V

    .line 94
    iget-object v1, p0, Lcom/squareup/wire/Wire;->builderAdapters:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :cond_0
    monitor-exit p0

    return-object v0

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized enumAdapter(Ljava/lang/Class;)Lcap;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/squareup/wire/ProtoEnum;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Lcap",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 104
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/squareup/wire/Wire;->enumAdapters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcap;

    .line 105
    if-nez v0, :cond_0

    .line 106
    new-instance v0, Lcap;

    invoke-direct {v0, p1}, Lcap;-><init>(Ljava/lang/Class;)V

    .line 107
    iget-object v1, p0, Lcom/squareup/wire/Wire;->enumAdapters:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :cond_0
    monitor-exit p0

    return-object v0

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized messageAdapter(Ljava/lang/Class;)Lcom/squareup/wire/MessageAdapter;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/squareup/wire/Message;",
            ">(",
            "Ljava/lang/Class",
            "<TM;>;)",
            "Lcom/squareup/wire/MessageAdapter",
            "<TM;>;"
        }
    .end annotation

    .prologue
    .line 77
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/squareup/wire/Wire;->messageAdapters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/MessageAdapter;

    .line 78
    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/squareup/wire/MessageAdapter;

    invoke-direct {v0, p0, p1}, Lcom/squareup/wire/MessageAdapter;-><init>(Lcom/squareup/wire/Wire;Ljava/lang/Class;)V

    .line 80
    iget-object v1, p0, Lcom/squareup/wire/Wire;->messageAdapters:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :cond_0
    monitor-exit p0

    return-object v0

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final parseFrom(Ljava/io/InputStream;Ljava/lang/Class;)Lcom/squareup/wire/Message;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/squareup/wire/Message;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/lang/Class",
            "<TM;>;)TM;"
        }
    .end annotation

    .prologue
    .line 141
    const-string v0, "input"

    invoke-static {p1, v0}, Ld;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    const-string v0, "messageClass"

    invoke-static {p2, v0}, Ld;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    new-instance v0, Lcbh;

    invoke-direct {v0, p1}, Lcbh;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0, p2}, Lcom/squareup/wire/Wire;->parseFrom(Lcbh;Ljava/lang/Class;)Lcom/squareup/wire/Message;

    move-result-object v0

    return-object v0
.end method

.method public final parseFrom([BIILjava/lang/Class;)Lcom/squareup/wire/Message;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/squareup/wire/Message;",
            ">([BII",
            "Ljava/lang/Class",
            "<TM;>;)TM;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 128
    const-string v0, "bytes"

    invoke-static {p1, v0}, Ld;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    if-ltz p2, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "offset < 0"

    invoke-static {v0, v3}, Ld;->a(ZLjava/lang/String;)V

    .line 130
    if-ltz p3, :cond_1

    move v0, v1

    :goto_1
    const-string v3, "count < 0"

    invoke-static {v0, v3}, Ld;->a(ZLjava/lang/String;)V

    .line 131
    add-int v0, p2, p3

    array-length v3, p1

    if-gt v0, v3, :cond_2

    :goto_2
    const-string v0, "offset + count > bytes"

    invoke-static {v1, v0}, Ld;->a(ZLjava/lang/String;)V

    .line 132
    const-string v0, "messageClass"

    invoke-static {p4, v0}, Ld;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    new-instance v0, Lcbh;

    invoke-direct {v0, p1, p2, p3}, Lcbh;-><init>([BII)V

    invoke-direct {p0, v0, p4}, Lcom/squareup/wire/Wire;->parseFrom(Lcbh;Ljava/lang/Class;)Lcom/squareup/wire/Message;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    .line 129
    goto :goto_0

    :cond_1
    move v0, v2

    .line 130
    goto :goto_1

    :cond_2
    move v1, v2

    .line 131
    goto :goto_2
.end method

.method public final parseFrom([BLjava/lang/Class;)Lcom/squareup/wire/Message;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/squareup/wire/Message;",
            ">([B",
            "Ljava/lang/Class",
            "<TM;>;)TM;"
        }
    .end annotation

    .prologue
    .line 117
    const-string v0, "bytes"

    invoke-static {p1, v0}, Ld;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    const-string v0, "messageClass"

    invoke-static {p2, v0}, Ld;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    new-instance v0, Lcbh;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-direct {v0, p1, v1, v2}, Lcbh;-><init>([BII)V

    invoke-direct {p0, v0, p2}, Lcom/squareup/wire/Wire;->parseFrom(Lcbh;Ljava/lang/Class;)Lcom/squareup/wire/Message;

    move-result-object v0

    return-object v0
.end method
