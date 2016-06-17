.class public Lcom/wandoujia/rpc/http/processor/JsonProcessor;
.super Ljava/lang/Object;
.source "JsonProcessor.java"

# interfaces
.implements Lcom/wandoujia/rpc/http/processor/Processor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/wandoujia/rpc/http/processor/Processor",
        "<",
        "Ljava/lang/String;",
        "TT;",
        "Lcom/wandoujia/rpc/http/exception/ContentParseException;",
        ">;"
    }
.end annotation


# instance fields
.field public final gson:Lcvo;


# direct methods
.method public constructor <init>(Lcvo;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/wandoujia/rpc/http/processor/JsonProcessor;->gson:Lcvo;

    .line 31
    return-void
.end method


# virtual methods
.method public bridge synthetic process(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 26
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/wandoujia/rpc/http/processor/JsonProcessor;->process(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public process(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Class;

    .line 39
    :try_start_0
    iget-object v1, p0, Lcom/wandoujia/rpc/http/processor/JsonProcessor;->gson:Lcvo;

    invoke-virtual {v1, p1, v0}, Lcvo;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/wandoujia/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    new-instance v1, Lcom/wandoujia/rpc/http/exception/ContentParseException;

    invoke-virtual {v0}, Lcom/wandoujia/gson/JsonSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lcom/wandoujia/rpc/http/exception/ContentParseException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method
