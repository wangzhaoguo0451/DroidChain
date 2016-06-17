.class public final enum Lcom/wandoujia/ripple_framework/action/ActionType;
.super Ljava/lang/Enum;
.source "ActionType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/ripple_framework/action/ActionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/ripple_framework/action/ActionType;

.field public static final enum CLEAR_DOWNLOAD_COMPLETE_APP:Lcom/wandoujia/ripple_framework/action/ActionType;

.field public static final enum CLEAR_DOWNLOAD_COMPLETE_MM:Lcom/wandoujia/ripple_framework/action/ActionType;

.field public static final enum DESIGN_AWARD:Lcom/wandoujia/ripple_framework/action/ActionType;

.field public static final enum REDIRECT:Lcom/wandoujia/ripple_framework/action/ActionType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/wandoujia/ripple_framework/action/ActionType;

    const-string v1, "REDIRECT"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/ripple_framework/action/ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/action/ActionType;->REDIRECT:Lcom/wandoujia/ripple_framework/action/ActionType;

    .line 10
    new-instance v0, Lcom/wandoujia/ripple_framework/action/ActionType;

    const-string v1, "CLEAR_DOWNLOAD_COMPLETE_APP"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/ripple_framework/action/ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/action/ActionType;->CLEAR_DOWNLOAD_COMPLETE_APP:Lcom/wandoujia/ripple_framework/action/ActionType;

    .line 11
    new-instance v0, Lcom/wandoujia/ripple_framework/action/ActionType;

    const-string v1, "CLEAR_DOWNLOAD_COMPLETE_MM"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/ripple_framework/action/ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/action/ActionType;->CLEAR_DOWNLOAD_COMPLETE_MM:Lcom/wandoujia/ripple_framework/action/ActionType;

    .line 12
    new-instance v0, Lcom/wandoujia/ripple_framework/action/ActionType;

    const-string v1, "DESIGN_AWARD"

    invoke-direct {v0, v1, v5}, Lcom/wandoujia/ripple_framework/action/ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/action/ActionType;->DESIGN_AWARD:Lcom/wandoujia/ripple_framework/action/ActionType;

    .line 8
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/wandoujia/ripple_framework/action/ActionType;

    sget-object v1, Lcom/wandoujia/ripple_framework/action/ActionType;->REDIRECT:Lcom/wandoujia/ripple_framework/action/ActionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/ripple_framework/action/ActionType;->CLEAR_DOWNLOAD_COMPLETE_APP:Lcom/wandoujia/ripple_framework/action/ActionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/ripple_framework/action/ActionType;->CLEAR_DOWNLOAD_COMPLETE_MM:Lcom/wandoujia/ripple_framework/action/ActionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/ripple_framework/action/ActionType;->DESIGN_AWARD:Lcom/wandoujia/ripple_framework/action/ActionType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/wandoujia/ripple_framework/action/ActionType;->$VALUES:[Lcom/wandoujia/ripple_framework/action/ActionType;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/ripple_framework/action/ActionType;
    .locals 1
    .parameter

    .prologue
    .line 8
    const-class v0, Lcom/wandoujia/ripple_framework/action/ActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/action/ActionType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/ripple_framework/action/ActionType;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/wandoujia/ripple_framework/action/ActionType;->$VALUES:[Lcom/wandoujia/ripple_framework/action/ActionType;

    invoke-virtual {v0}, [Lcom/wandoujia/ripple_framework/action/ActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/ripple_framework/action/ActionType;

    return-object v0
.end method
