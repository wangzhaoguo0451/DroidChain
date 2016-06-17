.class public Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo$Icon;
.super Ljava/lang/Object;
.source "SimpleAppInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private px256:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPx256()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo$Icon;->px256:Ljava/lang/String;

    return-object v0
.end method

.method public setPx256(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo$Icon;->px256:Ljava/lang/String;

    .line 86
    return-void
.end method
