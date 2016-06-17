.class public Lcom/wandoujia/rpc/http/processor/JsonMapProcessor;
.super Ljava/lang/Object;
.source "JsonMapProcessor.java"

# interfaces
.implements Lcom/wandoujia/rpc/http/processor/Processor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/wandoujia/rpc/http/processor/Processor",
        "<",
        "Ljava/lang/String;",
        "Ljava/util/Map",
        "<TT;TU;>;",
        "Lcom/wandoujia/rpc/http/exception/ContentParseException;",
        ">;"
    }
.end annotation


# instance fields
.field private gson:Lcvo;

.field private final typeToken:Lczv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lczv",
            "<",
            "Ljava/util/Map",
            "<TT;TU;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcvo;Lczv;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcvo;",
            "Lczv",
            "<",
            "Ljava/util/Map",
            "<TT;TU;>;>;)V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/wandoujia/rpc/http/processor/JsonMapProcessor;->gson:Lcvo;

    .line 25
    iput-object p2, p0, Lcom/wandoujia/rpc/http/processor/JsonMapProcessor;->typeToken:Lczv;

    .line 26
    return-void
.end method


# virtual methods
.method public bridge synthetic process(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 10
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/wandoujia/rpc/http/processor/JsonMapProcessor;->process(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public process(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<TT;TU;>;"
        }
    .end annotation

    .prologue
    .line 31
    :try_start_0
    iget-object v0, p0, Lcom/wandoujia/rpc/http/processor/JsonMapProcessor;->gson:Lcvo;

    iget-object v1, p0, Lcom/wandoujia/rpc/http/processor/JsonMapProcessor;->typeToken:Lczv;

    invoke-virtual {v1}, Lczv;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcvo;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_0
    .catch Lcom/wandoujia/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    new-instance v1, Lcom/wandoujia/rpc/http/exception/ContentParseException;

    invoke-virtual {v0}, Lcom/wandoujia/gson/JsonSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lcom/wandoujia/rpc/http/exception/ContentParseException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method
