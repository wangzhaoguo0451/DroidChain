.class final enum Lcom/wandoujia/gson/FieldNamingPolicy$5;
.super Lcom/wandoujia/gson/FieldNamingPolicy;
.source "FieldNamingPolicy.java"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/wandoujia/gson/FieldNamingPolicy;-><init>(Ljava/lang/String;ILcom/wandoujia/gson/FieldNamingPolicy$1;)V

    return-void
.end method


# virtual methods
.method public final translateName(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 114
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    #calls: Lcom/wandoujia/gson/FieldNamingPolicy;->separateCamelCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/wandoujia/gson/FieldNamingPolicy;->access$200(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
