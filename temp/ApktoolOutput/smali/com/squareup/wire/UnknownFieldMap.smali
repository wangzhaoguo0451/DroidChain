.class public final Lcom/squareup/wire/UnknownFieldMap;
.super Ljava/lang/Object;
.source "UnknownFieldMap.java"


# instance fields
.field a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lcbc;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/squareup/wire/UnknownFieldMap;)V
    .locals 2
    .parameter

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    iget-object v0, p1, Lcom/squareup/wire/UnknownFieldMap;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {p0}, Lcom/squareup/wire/UnknownFieldMap;->a()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p1, Lcom/squareup/wire/UnknownFieldMap;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 194
    :cond_0
    return-void
.end method

.method static a(Ljava/util/Map;ILjava/lang/Object;Lcom/squareup/wire/WireType;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lcbc;",
            ">;>;ITT;",
            "Lcom/squareup/wire/WireType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 221
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 222
    if-nez v0, :cond_1

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 224
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 227
    :goto_0
    sget-object v0, Lcbb;->a:[I

    invoke-virtual {p3}, Lcom/squareup/wire/WireType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 241
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported wireType = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :pswitch_0
    check-cast p2, Ljava/lang/Long;

    new-instance v0, Lcbg;

    invoke-direct {v0, p2}, Lcbg;-><init>(Ljava/lang/Long;)V

    move-object v2, v0

    .line 243
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcbc;

    iget-object v0, v0, Lcbc;->a:Lcom/squareup/wire/WireType;

    iget-object v3, v2, Lcbc;->a:Lcom/squareup/wire/WireType;

    if-eq v0, v3, :cond_0

    .line 244
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Wire type differs from previous type for tag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :pswitch_1
    check-cast p2, Ljava/lang/Integer;

    new-instance v0, Lcbd;

    invoke-direct {v0, p2}, Lcbd;-><init>(Ljava/lang/Integer;)V

    move-object v2, v0

    .line 233
    goto :goto_1

    .line 235
    :pswitch_2
    check-cast p2, Ljava/lang/Long;

    new-instance v0, Lcbe;

    invoke-direct {v0, p2}, Lcbe;-><init>(Ljava/lang/Long;)V

    move-object v2, v0

    .line 236
    goto :goto_1

    .line 238
    :pswitch_3
    check-cast p2, Lcom/squareup/wire/ByteString;

    new-instance v0, Lcbf;

    invoke-direct {v0, p2}, Lcbf;-><init>(Lcom/squareup/wire/ByteString;)V

    move-object v2, v0

    .line 239
    goto :goto_1

    .line 246
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    return-void

    :cond_1
    move-object v1, v0

    goto :goto_0

    .line 227
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method final a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lcbc;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 213
    iget-object v0, p0, Lcom/squareup/wire/UnknownFieldMap;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 214
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/squareup/wire/UnknownFieldMap;->a:Ljava/util/Map;

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/squareup/wire/UnknownFieldMap;->a:Ljava/util/Map;

    return-object v0
.end method
