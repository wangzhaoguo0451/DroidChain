.class public final enum Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;
.super Ljava/lang/Enum;
.source "ScalingUtils.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

.field public static final enum CENTER:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

.field public static final enum CENTER_CROP:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

.field public static final enum CENTER_INSIDE:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

.field public static final enum FIT_CENTER:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

.field public static final enum FIT_END:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

.field public static final enum FIT_START:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

.field public static final enum FIT_XY:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

.field public static final enum FOCUS_CROP:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 33
    new-instance v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    const-string v1, "FIT_XY"

    invoke-direct {v0, v1, v3}, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->FIT_XY:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 40
    new-instance v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    const-string v1, "FIT_START"

    invoke-direct {v0, v1, v4}, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->FIT_START:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 47
    new-instance v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    const-string v1, "FIT_CENTER"

    invoke-direct {v0, v1, v5}, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->FIT_CENTER:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 54
    new-instance v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    const-string v1, "FIT_END"

    invoke-direct {v0, v1, v6}, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->FIT_END:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 60
    new-instance v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    const-string v1, "CENTER"

    invoke-direct {v0, v1, v7}, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->CENTER:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 67
    new-instance v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    const-string v1, "CENTER_INSIDE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->CENTER_INSIDE:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 74
    new-instance v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    const-string v1, "CENTER_CROP"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->CENTER_CROP:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 84
    new-instance v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    const-string v1, "FOCUS_CROP"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->FOCUS_CROP:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 27
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    sget-object v1, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->FIT_XY:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->FIT_START:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->FIT_CENTER:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->FIT_END:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->CENTER:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->CENTER_INSIDE:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->CENTER_CROP:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->FOCUS_CROP:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->$VALUES:[Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

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
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;
    .locals 3
    .parameter

    .prologue
    .line 97
    const-string v0, "none"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    const/4 v0, 0x0

    .line 114
    :goto_0
    return-object v0

    .line 99
    :cond_0
    const-string v0, "fitXY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    sget-object v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->FIT_XY:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    goto :goto_0

    .line 101
    :cond_1
    const-string v0, "fitStart"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102
    sget-object v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->FIT_START:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    goto :goto_0

    .line 103
    :cond_2
    const-string v0, "fitCenter"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 104
    sget-object v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->FIT_CENTER:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    goto :goto_0

    .line 105
    :cond_3
    const-string v0, "fitEnd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 106
    sget-object v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->FIT_END:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    goto :goto_0

    .line 107
    :cond_4
    const-string v0, "center"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 108
    sget-object v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->CENTER:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    goto :goto_0

    .line 109
    :cond_5
    const-string v0, "centerInside"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 110
    sget-object v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->CENTER_INSIDE:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    goto :goto_0

    .line 111
    :cond_6
    const-string v0, "centerCrop"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 112
    sget-object v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->CENTER_CROP:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    goto :goto_0

    .line 113
    :cond_7
    const-string v0, "focusCrop"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 114
    sget-object v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->FOCUS_CROP:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    goto :goto_0

    .line 116
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unrecognized scale type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; use a value defined in the ScalingUtils.fromString method"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;
    .locals 1
    .parameter

    .prologue
    .line 27
    const-class v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-object v0
.end method

.method public static values()[Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->$VALUES:[Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    invoke-virtual {v0}, [Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-object v0
.end method
