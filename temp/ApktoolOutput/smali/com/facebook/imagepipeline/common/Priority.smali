.class public final enum Lcom/facebook/imagepipeline/common/Priority;
.super Ljava/lang/Enum;
.source "Priority.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/imagepipeline/common/Priority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/imagepipeline/common/Priority;

.field public static final enum HIGH:Lcom/facebook/imagepipeline/common/Priority;

.field public static final enum LOW:Lcom/facebook/imagepipeline/common/Priority;

.field public static final enum MEDIUM:Lcom/facebook/imagepipeline/common/Priority;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lcom/facebook/imagepipeline/common/Priority;

    const-string v1, "LOW"

    invoke-direct {v0, v1, v2}, Lcom/facebook/imagepipeline/common/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/imagepipeline/common/Priority;->LOW:Lcom/facebook/imagepipeline/common/Priority;

    .line 31
    new-instance v0, Lcom/facebook/imagepipeline/common/Priority;

    const-string v1, "MEDIUM"

    invoke-direct {v0, v1, v3}, Lcom/facebook/imagepipeline/common/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/imagepipeline/common/Priority;->MEDIUM:Lcom/facebook/imagepipeline/common/Priority;

    .line 36
    new-instance v0, Lcom/facebook/imagepipeline/common/Priority;

    const-string v1, "HIGH"

    invoke-direct {v0, v1, v4}, Lcom/facebook/imagepipeline/common/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/imagepipeline/common/Priority;->HIGH:Lcom/facebook/imagepipeline/common/Priority;

    .line 17
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/imagepipeline/common/Priority;

    sget-object v1, Lcom/facebook/imagepipeline/common/Priority;->LOW:Lcom/facebook/imagepipeline/common/Priority;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/imagepipeline/common/Priority;->MEDIUM:Lcom/facebook/imagepipeline/common/Priority;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/imagepipeline/common/Priority;->HIGH:Lcom/facebook/imagepipeline/common/Priority;

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/imagepipeline/common/Priority;->$VALUES:[Lcom/facebook/imagepipeline/common/Priority;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getHigherPriority(Lcom/facebook/imagepipeline/common/Priority;Lcom/facebook/imagepipeline/common/Priority;)Lcom/facebook/imagepipeline/common/Priority;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 47
    if-nez p0, :cond_1

    .line 56
    :cond_0
    :goto_0
    return-object p1

    .line 50
    :cond_1
    if-nez p1, :cond_2

    move-object p1, p0

    .line 51
    goto :goto_0

    .line 53
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/common/Priority;->ordinal()I

    move-result v0

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/common/Priority;->ordinal()I

    move-result v1

    if-le v0, v1, :cond_0

    move-object p1, p0

    .line 54
    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/imagepipeline/common/Priority;
    .locals 1
    .parameter

    .prologue
    .line 17
    const-class v0, Lcom/facebook/imagepipeline/common/Priority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/common/Priority;

    return-object v0
.end method

.method public static values()[Lcom/facebook/imagepipeline/common/Priority;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/facebook/imagepipeline/common/Priority;->$VALUES:[Lcom/facebook/imagepipeline/common/Priority;

    invoke-virtual {v0}, [Lcom/facebook/imagepipeline/common/Priority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/imagepipeline/common/Priority;

    return-object v0
.end method
