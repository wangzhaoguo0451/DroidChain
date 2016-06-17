.class public Lcom/wandoujia/entities/game/GameTag$TagColor;
.super Ljava/lang/Object;
.source "GameTag.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private normal:Ljava/lang/String;

.field private pressed:Ljava/lang/String;

.field final synthetic this$0:Lcom/wandoujia/entities/game/GameTag;


# direct methods
.method public constructor <init>(Lcom/wandoujia/entities/game/GameTag;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/wandoujia/entities/game/GameTag$TagColor;->this$0:Lcom/wandoujia/entities/game/GameTag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNormal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/wandoujia/entities/game/GameTag$TagColor;->normal:Ljava/lang/String;

    return-object v0
.end method

.method public getPressed()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/wandoujia/entities/game/GameTag$TagColor;->pressed:Ljava/lang/String;

    return-object v0
.end method
