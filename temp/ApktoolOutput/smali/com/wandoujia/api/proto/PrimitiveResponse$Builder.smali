.class public final Lcom/wandoujia/api/proto/PrimitiveResponse$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "PrimitiveResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/api/proto/PrimitiveResponse;",
        ">;"
    }
.end annotation


# instance fields
.field public boolean_array:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public byte_array:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/wire/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field public double_array:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public long_array:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public string_array:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public timestamp:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 96
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/api/proto/PrimitiveResponse;)V
    .locals 1
    .parameter

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 100
    if-nez p1, :cond_0

    .line 107
    :goto_0
    return-void

    .line 101
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/api/proto/PrimitiveResponse;->double_array:Ljava/util/List;

    #calls: Lcom/wandoujia/api/proto/PrimitiveResponse;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/wandoujia/api/proto/PrimitiveResponse;->access$000(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/PrimitiveResponse$Builder;->double_array:Ljava/util/List;

    .line 102
    iget-object v0, p1, Lcom/wandoujia/api/proto/PrimitiveResponse;->long_array:Ljava/util/List;

    #calls: Lcom/wandoujia/api/proto/PrimitiveResponse;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/wandoujia/api/proto/PrimitiveResponse;->access$100(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/PrimitiveResponse$Builder;->long_array:Ljava/util/List;

    .line 103
    iget-object v0, p1, Lcom/wandoujia/api/proto/PrimitiveResponse;->boolean_array:Ljava/util/List;

    #calls: Lcom/wandoujia/api/proto/PrimitiveResponse;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/wandoujia/api/proto/PrimitiveResponse;->access$200(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/PrimitiveResponse$Builder;->boolean_array:Ljava/util/List;

    .line 104
    iget-object v0, p1, Lcom/wandoujia/api/proto/PrimitiveResponse;->string_array:Ljava/util/List;

    #calls: Lcom/wandoujia/api/proto/PrimitiveResponse;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/wandoujia/api/proto/PrimitiveResponse;->access$300(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/PrimitiveResponse$Builder;->string_array:Ljava/util/List;

    .line 105
    iget-object v0, p1, Lcom/wandoujia/api/proto/PrimitiveResponse;->byte_array:Ljava/util/List;

    #calls: Lcom/wandoujia/api/proto/PrimitiveResponse;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/wandoujia/api/proto/PrimitiveResponse;->access$400(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/PrimitiveResponse$Builder;->byte_array:Ljava/util/List;

    .line 106
    iget-object v0, p1, Lcom/wandoujia/api/proto/PrimitiveResponse;->timestamp:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/api/proto/PrimitiveResponse$Builder;->timestamp:Ljava/lang/Long;

    goto :goto_0
.end method


# virtual methods
.method public final boolean_array(Ljava/util/List;)Lcom/wandoujia/api/proto/PrimitiveResponse$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/wandoujia/api/proto/PrimitiveResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 120
    invoke-static {p1}, Lcom/wandoujia/api/proto/PrimitiveResponse$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/PrimitiveResponse$Builder;->boolean_array:Ljava/util/List;

    .line 121
    return-object p0
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/wandoujia/api/proto/PrimitiveResponse$Builder;->build()Lcom/wandoujia/api/proto/PrimitiveResponse;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/api/proto/PrimitiveResponse;
    .locals 2

    .prologue
    .line 144
    new-instance v0, Lcom/wandoujia/api/proto/PrimitiveResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/api/proto/PrimitiveResponse;-><init>(Lcom/wandoujia/api/proto/PrimitiveResponse$Builder;Ld;)V

    return-object v0
.end method

.method public final byte_array(Ljava/util/List;)Lcom/wandoujia/api/proto/PrimitiveResponse$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/wire/ByteString;",
            ">;)",
            "Lcom/wandoujia/api/proto/PrimitiveResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 130
    invoke-static {p1}, Lcom/wandoujia/api/proto/PrimitiveResponse$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/PrimitiveResponse$Builder;->byte_array:Ljava/util/List;

    .line 131
    return-object p0
.end method

.method public final double_array(Ljava/util/List;)Lcom/wandoujia/api/proto/PrimitiveResponse$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;)",
            "Lcom/wandoujia/api/proto/PrimitiveResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 110
    invoke-static {p1}, Lcom/wandoujia/api/proto/PrimitiveResponse$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/PrimitiveResponse$Builder;->double_array:Ljava/util/List;

    .line 111
    return-object p0
.end method

.method public final long_array(Ljava/util/List;)Lcom/wandoujia/api/proto/PrimitiveResponse$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/wandoujia/api/proto/PrimitiveResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 115
    invoke-static {p1}, Lcom/wandoujia/api/proto/PrimitiveResponse$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/PrimitiveResponse$Builder;->long_array:Ljava/util/List;

    .line 116
    return-object p0
.end method

.method public final string_array(Ljava/util/List;)Lcom/wandoujia/api/proto/PrimitiveResponse$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/wandoujia/api/proto/PrimitiveResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 125
    invoke-static {p1}, Lcom/wandoujia/api/proto/PrimitiveResponse$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/api/proto/PrimitiveResponse$Builder;->string_array:Ljava/util/List;

    .line 126
    return-object p0
.end method

.method public final timestamp(Ljava/lang/Long;)Lcom/wandoujia/api/proto/PrimitiveResponse$Builder;
    .locals 0
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/wandoujia/api/proto/PrimitiveResponse$Builder;->timestamp:Ljava/lang/Long;

    .line 139
    return-object p0
.end method
