.class public abstract Lcom/squareup/wire/Message$Builder;
.super Ljava/lang/Object;
.source "Message.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/squareup/wire/Message;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field unknownFieldMap:Lcom/squareup/wire/UnknownFieldMap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/squareup/wire/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    if-eqz p1, :cond_0

    #getter for: Lcom/squareup/wire/Message;->unknownFields:Lcom/squareup/wire/UnknownFieldMap;
    invoke-static {p1}, Lcom/squareup/wire/Message;->access$000(Lcom/squareup/wire/Message;)Lcom/squareup/wire/UnknownFieldMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 299
    new-instance v0, Lcom/squareup/wire/UnknownFieldMap;

    #getter for: Lcom/squareup/wire/Message;->unknownFields:Lcom/squareup/wire/UnknownFieldMap;
    invoke-static {p1}, Lcom/squareup/wire/Message;->access$000(Lcom/squareup/wire/Message;)Lcom/squareup/wire/UnknownFieldMap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/squareup/wire/UnknownFieldMap;-><init>(Lcom/squareup/wire/UnknownFieldMap;)V

    iput-object v0, p0, Lcom/squareup/wire/Message$Builder;->unknownFieldMap:Lcom/squareup/wire/UnknownFieldMap;

    .line 301
    :cond_0
    return-void
.end method

.method public static checkForNulls(Ljava/util/List;)Ljava/util/List;
    .locals 2
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
    .line 353
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 354
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 355
    if-nez v1, :cond_0

    .line 356
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 360
    :cond_1
    return-object p0
.end method

.method private ensureUnknownFieldMap()Lcom/squareup/wire/UnknownFieldMap;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/squareup/wire/Message$Builder;->unknownFieldMap:Lcom/squareup/wire/UnknownFieldMap;

    if-nez v0, :cond_0

    .line 333
    new-instance v0, Lcom/squareup/wire/UnknownFieldMap;

    invoke-direct {v0}, Lcom/squareup/wire/UnknownFieldMap;-><init>()V

    iput-object v0, p0, Lcom/squareup/wire/Message$Builder;->unknownFieldMap:Lcom/squareup/wire/UnknownFieldMap;

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/squareup/wire/Message$Builder;->unknownFieldMap:Lcom/squareup/wire/UnknownFieldMap;

    return-object v0
.end method


# virtual methods
.method public addFixed32(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 314
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;->ensureUnknownFieldMap()Lcom/squareup/wire/UnknownFieldMap;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0}, Lcom/squareup/wire/UnknownFieldMap;->a()Ljava/util/Map;

    move-result-object v0

    sget-object v2, Lcom/squareup/wire/WireType;->FIXED32:Lcom/squareup/wire/WireType;

    invoke-static {v0, p1, v1, v2}, Lcom/squareup/wire/UnknownFieldMap;->a(Ljava/util/Map;ILjava/lang/Object;Lcom/squareup/wire/WireType;)V

    .line 315
    return-void
.end method

.method public addFixed64(IJ)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 321
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;->ensureUnknownFieldMap()Lcom/squareup/wire/UnknownFieldMap;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0}, Lcom/squareup/wire/UnknownFieldMap;->a()Ljava/util/Map;

    move-result-object v0

    sget-object v2, Lcom/squareup/wire/WireType;->FIXED64:Lcom/squareup/wire/WireType;

    invoke-static {v0, p1, v1, v2}, Lcom/squareup/wire/UnknownFieldMap;->a(Ljava/util/Map;ILjava/lang/Object;Lcom/squareup/wire/WireType;)V

    .line 322
    return-void
.end method

.method public addLengthDelimited(ILcom/squareup/wire/ByteString;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 328
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;->ensureUnknownFieldMap()Lcom/squareup/wire/UnknownFieldMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/wire/UnknownFieldMap;->a()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/squareup/wire/WireType;->LENGTH_DELIMITED:Lcom/squareup/wire/WireType;

    invoke-static {v0, p1, p2, v1}, Lcom/squareup/wire/UnknownFieldMap;->a(Ljava/util/Map;ILjava/lang/Object;Lcom/squareup/wire/WireType;)V

    .line 329
    return-void
.end method

.method public addVarint(IJ)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 307
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;->ensureUnknownFieldMap()Lcom/squareup/wire/UnknownFieldMap;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0}, Lcom/squareup/wire/UnknownFieldMap;->a()Ljava/util/Map;

    move-result-object v0

    sget-object v2, Lcom/squareup/wire/WireType;->VARINT:Lcom/squareup/wire/WireType;

    invoke-static {v0, p1, v1, v2}, Lcom/squareup/wire/UnknownFieldMap;->a(Ljava/util/Map;ILjava/lang/Object;Lcom/squareup/wire/WireType;)V

    .line 308
    return-void
.end method

.method public abstract build()Lcom/squareup/wire/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public checkRequiredFields()V
    .locals 7

    .prologue
    .line 342
    invoke-static {}, Lcom/squareup/wire/Message;->access$100()Lcom/squareup/wire/Wire;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/wire/Wire;->builderAdapter(Ljava/lang/Class;)Lcan;

    move-result-object v4

    const/4 v2, 0x0

    const-string v1, ""

    const/4 v0, 0x0

    :try_start_0
    iget-object v3, v4, Lcan;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    move v3, v0

    :goto_0
    if-ge v3, v5, :cond_2

    iget-object v0, v4, Lcan;->a:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_0

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    const-string v6, "\n  "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    move-object v0, v1

    move-object v1, v2

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move-object v2, v1

    move-object v1, v0

    goto :goto_0

    :cond_1
    const-string v1, "s"

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "$"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const-string v4, "$"

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    if-le v4, v3, :cond_3

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_3
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\'s required field"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " not set:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Unable to access required fields"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_4
    return-void
.end method
