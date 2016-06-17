.class public final enum Lcom/wandoujia/jupiter/anim/ChangeAnimType;
.super Ljava/lang/Enum;
.source "ChangeAnimType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/jupiter/anim/ChangeAnimType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/jupiter/anim/ChangeAnimType;

.field public static final enum FLIP_LEFT:Lcom/wandoujia/jupiter/anim/ChangeAnimType;

.field public static final enum FLIP_RIGHT:Lcom/wandoujia/jupiter/anim/ChangeAnimType;

.field public static final enum NORMAL:Lcom/wandoujia/jupiter/anim/ChangeAnimType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/wandoujia/jupiter/anim/ChangeAnimType;

    const-string v1, "FLIP_RIGHT"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/jupiter/anim/ChangeAnimType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/jupiter/anim/ChangeAnimType;->FLIP_RIGHT:Lcom/wandoujia/jupiter/anim/ChangeAnimType;

    new-instance v0, Lcom/wandoujia/jupiter/anim/ChangeAnimType;

    const-string v1, "FLIP_LEFT"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/jupiter/anim/ChangeAnimType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/jupiter/anim/ChangeAnimType;->FLIP_LEFT:Lcom/wandoujia/jupiter/anim/ChangeAnimType;

    new-instance v0, Lcom/wandoujia/jupiter/anim/ChangeAnimType;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/jupiter/anim/ChangeAnimType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/jupiter/anim/ChangeAnimType;->NORMAL:Lcom/wandoujia/jupiter/anim/ChangeAnimType;

    .line 6
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/wandoujia/jupiter/anim/ChangeAnimType;

    sget-object v1, Lcom/wandoujia/jupiter/anim/ChangeAnimType;->FLIP_RIGHT:Lcom/wandoujia/jupiter/anim/ChangeAnimType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/jupiter/anim/ChangeAnimType;->FLIP_LEFT:Lcom/wandoujia/jupiter/anim/ChangeAnimType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/jupiter/anim/ChangeAnimType;->NORMAL:Lcom/wandoujia/jupiter/anim/ChangeAnimType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/wandoujia/jupiter/anim/ChangeAnimType;->$VALUES:[Lcom/wandoujia/jupiter/anim/ChangeAnimType;

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
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/jupiter/anim/ChangeAnimType;
    .locals 1
    .parameter

    .prologue
    .line 6
    const-class v0, Lcom/wandoujia/jupiter/anim/ChangeAnimType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/jupiter/anim/ChangeAnimType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/jupiter/anim/ChangeAnimType;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/wandoujia/jupiter/anim/ChangeAnimType;->$VALUES:[Lcom/wandoujia/jupiter/anim/ChangeAnimType;

    invoke-virtual {v0}, [Lcom/wandoujia/jupiter/anim/ChangeAnimType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/jupiter/anim/ChangeAnimType;

    return-object v0
.end method
