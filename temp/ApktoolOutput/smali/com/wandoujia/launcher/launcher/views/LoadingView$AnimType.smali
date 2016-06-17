.class public final enum Lcom/wandoujia/launcher/launcher/views/LoadingView$AnimType;
.super Ljava/lang/Enum;
.source "LoadingView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/launcher/launcher/views/LoadingView$AnimType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/launcher/launcher/views/LoadingView$AnimType;

.field public static final enum ROTATE:Lcom/wandoujia/launcher/launcher/views/LoadingView$AnimType;

.field public static final enum SCALE:Lcom/wandoujia/launcher/launcher/views/LoadingView$AnimType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lcom/wandoujia/launcher/launcher/views/LoadingView$AnimType;

    const-string v1, "ROTATE"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/launcher/launcher/views/LoadingView$AnimType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/launcher/launcher/views/LoadingView$AnimType;->ROTATE:Lcom/wandoujia/launcher/launcher/views/LoadingView$AnimType;

    new-instance v0, Lcom/wandoujia/launcher/launcher/views/LoadingView$AnimType;

    const-string v1, "SCALE"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/launcher/launcher/views/LoadingView$AnimType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/launcher/launcher/views/LoadingView$AnimType;->SCALE:Lcom/wandoujia/launcher/launcher/views/LoadingView$AnimType;

    .line 22
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/wandoujia/launcher/launcher/views/LoadingView$AnimType;

    sget-object v1, Lcom/wandoujia/launcher/launcher/views/LoadingView$AnimType;->ROTATE:Lcom/wandoujia/launcher/launcher/views/LoadingView$AnimType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/launcher/launcher/views/LoadingView$AnimType;->SCALE:Lcom/wandoujia/launcher/launcher/views/LoadingView$AnimType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/wandoujia/launcher/launcher/views/LoadingView$AnimType;->$VALUES:[Lcom/wandoujia/launcher/launcher/views/LoadingView$AnimType;

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
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/launcher/launcher/views/LoadingView$AnimType;
    .locals 1
    .parameter

    .prologue
    .line 22
    const-class v0, Lcom/wandoujia/launcher/launcher/views/LoadingView$AnimType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher/launcher/views/LoadingView$AnimType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/launcher/launcher/views/LoadingView$AnimType;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/wandoujia/launcher/launcher/views/LoadingView$AnimType;->$VALUES:[Lcom/wandoujia/launcher/launcher/views/LoadingView$AnimType;

    invoke-virtual {v0}, [Lcom/wandoujia/launcher/launcher/views/LoadingView$AnimType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/launcher/launcher/views/LoadingView$AnimType;

    return-object v0
.end method
