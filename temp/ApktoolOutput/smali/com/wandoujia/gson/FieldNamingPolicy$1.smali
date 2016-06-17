.class final enum Lcom/wandoujia/gson/FieldNamingPolicy$1;
.super Lcom/wandoujia/gson/FieldNamingPolicy;
.source "FieldNamingPolicy.java"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/wandoujia/gson/FieldNamingPolicy;-><init>(Ljava/lang/String;ILcom/wandoujia/gson/FieldNamingPolicy$1;)V

    return-void
.end method


# virtual methods
.method public final translateName(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 38
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
