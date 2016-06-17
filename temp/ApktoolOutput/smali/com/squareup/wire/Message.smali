.class public abstract Lcom/squareup/wire/Message;
.super Ljava/lang/Object;
.source "Message.java"


# static fields
.field private static final WIRE:Lcom/squareup/wire/Wire;


# instance fields
.field private transient cachedSerializedSize:I

.field public transient hashCode:I

.field private transient haveCachedSerializedSize:Z

.field private transient unknownFields:Lcom/squareup/wire/UnknownFieldMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Lcom/squareup/wire/Wire;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/squareup/wire/Wire;-><init>([Ljava/lang/Class;)V

    sput-object v0, Lcom/squareup/wire/Message;->WIRE:Lcom/squareup/wire/Wire;

    return-void
.end method

.method public constructor <init>(Lcom/squareup/wire/Message$Builder;)V
    .locals 2
    .parameter

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    const/4 v0, 0x0

    iput v0, p0, Lcom/squareup/wire/Message;->hashCode:I

    .line 163
    iget-object v0, p1, Lcom/squareup/wire/Message$Builder;->unknownFieldMap:Lcom/squareup/wire/UnknownFieldMap;

    if-eqz v0, :cond_0

    .line 164
    new-instance v0, Lcom/squareup/wire/UnknownFieldMap;

    iget-object v1, p1, Lcom/squareup/wire/Message$Builder;->unknownFieldMap:Lcom/squareup/wire/UnknownFieldMap;

    invoke-direct {v0, v1}, Lcom/squareup/wire/UnknownFieldMap;-><init>(Lcom/squareup/wire/UnknownFieldMap;)V

    iput-object v0, p0, Lcom/squareup/wire/Message;->unknownFields:Lcom/squareup/wire/UnknownFieldMap;

    .line 166
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/squareup/wire/Message;)Lcom/squareup/wire/UnknownFieldMap;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/squareup/wire/Message;->unknownFields:Lcom/squareup/wire/UnknownFieldMap;

    return-object v0
.end method

.method static synthetic access$100()Lcom/squareup/wire/Wire;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/squareup/wire/Message;->WIRE:Lcom/squareup/wire/Wire;

    return-object v0
.end method

.method protected static varargs asList([Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 272
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static copyOf(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 178
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public static enumFromInt(Ljava/lang/Class;I)Ljava/lang/Enum;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum;",
            ":",
            "Lcom/squareup/wire/ProtoEnum;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;I)TE;"
        }
    .end annotation

    .prologue
    .line 213
    sget-object v0, Lcom/squareup/wire/Message;->WIRE:Lcom/squareup/wire/Wire;

    invoke-virtual {v0, p0}, Lcom/squareup/wire/Wire;->enumAdapter(Ljava/lang/Class;)Lcap;

    move-result-object v0

    .line 214
    invoke-virtual {v0, p1}, Lcap;->a(I)Lcom/squareup/wire/ProtoEnum;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    return-object v0
.end method

.method public static immutableCopyOf(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 186
    if-nez p0, :cond_0

    .line 187
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 189
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public static intFromEnum(Ljava/lang/Enum;)I
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum;",
            ":",
            "Lcom/squareup/wire/ProtoEnum;",
            ">(TE;)I"
        }
    .end annotation

    .prologue
    .line 201
    sget-object v0, Lcom/squareup/wire/Message;->WIRE:Lcom/squareup/wire/Wire;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/wire/Wire;->enumAdapter(Ljava/lang/Class;)Lcap;

    .line 202
    check-cast p0, Lcom/squareup/wire/ProtoEnum;

    invoke-static {p0}, Lcap;->a(Lcom/squareup/wire/ProtoEnum;)I

    move-result v0

    return v0
.end method

.method private write(Lcom/squareup/wire/WireOutput;)V
    .locals 2
    .parameter

    .prologue
    .line 232
    sget-object v0, Lcom/squareup/wire/Message;->WIRE:Lcom/squareup/wire/Wire;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/wire/Wire;->messageAdapter(Ljava/lang/Class;)Lcom/squareup/wire/MessageAdapter;

    move-result-object v0

    .line 234
    :try_start_0
    invoke-virtual {v0, p0, p1}, Lcom/squareup/wire/MessageAdapter;->a(Lcom/squareup/wire/Message;Lcom/squareup/wire/WireOutput;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    return-void

    .line 235
    :catch_0
    move-exception v0

    .line 236
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 261
    if-eq p1, p2, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/util/List;Ljava/util/List;)Z
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Ljava/util/List",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 266
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object p1, v0

    .line 267
    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object p2, v0

    .line 268
    :cond_1
    if-eq p1, p2, :cond_2

    if-eqz p1, :cond_3

    invoke-interface {p1, p2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 2

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/squareup/wire/Message;->haveCachedSerializedSize:Z

    if-nez v0, :cond_0

    .line 249
    sget-object v0, Lcom/squareup/wire/Message;->WIRE:Lcom/squareup/wire/Wire;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/wire/Wire;->messageAdapter(Ljava/lang/Class;)Lcom/squareup/wire/MessageAdapter;

    move-result-object v0

    .line 250
    invoke-virtual {v0, p0}, Lcom/squareup/wire/MessageAdapter;->a(Lcom/squareup/wire/Message;)I

    move-result v0

    iput v0, p0, Lcom/squareup/wire/Message;->cachedSerializedSize:I

    .line 251
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/wire/Message;->haveCachedSerializedSize:Z

    .line 253
    :cond_0
    iget v0, p0, Lcom/squareup/wire/Message;->cachedSerializedSize:I

    return v0
.end method

.method public getUnknownFieldsSerializedSize()I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 257
    iget-object v1, p0, Lcom/squareup/wire/Message;->unknownFields:Lcom/squareup/wire/UnknownFieldMap;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/squareup/wire/Message;->unknownFields:Lcom/squareup/wire/UnknownFieldMap;

    iget-object v2, v1, Lcom/squareup/wire/UnknownFieldMap;->a:Ljava/util/Map;

    if-eqz v2, :cond_2

    iget-object v1, v1, Lcom/squareup/wire/UnknownFieldMap;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v3, v2

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcbc;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/squareup/wire/WireOutput;->varintTagSize(I)I

    move-result v2

    add-int/2addr v2, v3

    invoke-virtual {v1}, Lcbc;->a()I

    move-result v1

    add-int v3, v2, v1

    goto :goto_2

    :cond_1
    move v2, v3

    goto :goto_1

    :cond_2
    move v2, v0

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public toByteArray()[B
    .locals 2

    .prologue
    .line 219
    sget-object v0, Lcom/squareup/wire/Message;->WIRE:Lcom/squareup/wire/Wire;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/wire/Wire;->messageAdapter(Ljava/lang/Class;)Lcom/squareup/wire/MessageAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/wire/MessageAdapter;->b(Lcom/squareup/wire/Message;)[B

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 278
    sget-object v0, Lcom/squareup/wire/Message;->WIRE:Lcom/squareup/wire/Wire;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/wire/Wire;->messageAdapter(Ljava/lang/Class;)Lcom/squareup/wire/MessageAdapter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v1, Lcom/squareup/wire/MessageAdapter;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "{"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v1}, Lcom/squareup/wire/MessageAdapter;->a()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/MessageAdapter$FieldInfo;

    invoke-static {p0, v0}, Lcom/squareup/wire/MessageAdapter;->a(Lcom/squareup/wire/Message;Lcom/squareup/wire/MessageAdapter$FieldInfo;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    iget-object v0, v0, Lcom/squareup/wire/MessageAdapter$FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    instance-of v0, p0, Lcom/squareup/wire/ExtendableMessage;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/squareup/wire/ExtendableMessage;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "{extensions="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/squareup/wire/ExtendableMessage;->extensionsToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected unknownFields()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<",
            "Lcbc;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Lcom/squareup/wire/Message;->unknownFields:Lcom/squareup/wire/UnknownFieldMap;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/squareup/wire/Message;->unknownFields:Lcom/squareup/wire/UnknownFieldMap;

    iget-object v0, v0, Lcom/squareup/wire/UnknownFieldMap;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    goto :goto_0
.end method

.method public writeTo([B)V
    .locals 2
    .parameter

    .prologue
    .line 223
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/squareup/wire/Message;->writeTo([BII)V

    .line 224
    return-void
.end method

.method public writeTo([BII)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 227
    invoke-static {p1, p2, p3}, Lcom/squareup/wire/WireOutput;->newInstance([BII)Lcom/squareup/wire/WireOutput;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/squareup/wire/Message;->write(Lcom/squareup/wire/WireOutput;)V

    .line 228
    return-void
.end method

.method public writeUnknownFieldMap(Lcom/squareup/wire/WireOutput;)V
    .locals 4
    .parameter

    .prologue
    .line 241
    iget-object v0, p0, Lcom/squareup/wire/Message;->unknownFields:Lcom/squareup/wire/UnknownFieldMap;

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/squareup/wire/Message;->unknownFields:Lcom/squareup/wire/UnknownFieldMap;

    iget-object v1, v0, Lcom/squareup/wire/UnknownFieldMap;->a:Ljava/util/Map;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/squareup/wire/UnknownFieldMap;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcbc;

    invoke-virtual {v0, v1, p1}, Lcbc;->a(ILcom/squareup/wire/WireOutput;)V

    goto :goto_0

    .line 244
    :cond_1
    return-void
.end method
