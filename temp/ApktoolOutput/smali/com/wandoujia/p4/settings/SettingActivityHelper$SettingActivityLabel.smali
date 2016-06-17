.class public final enum Lcom/wandoujia/p4/settings/SettingActivityHelper$SettingActivityLabel;
.super Ljava/lang/Enum;
.source "SettingActivityHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/p4/settings/SettingActivityHelper$SettingActivityLabel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/p4/settings/SettingActivityHelper$SettingActivityLabel;

.field public static final enum ABOUT:Lcom/wandoujia/p4/settings/SettingActivityHelper$SettingActivityLabel;

.field public static final enum MAIN:Lcom/wandoujia/p4/settings/SettingActivityHelper$SettingActivityLabel;

.field public static final enum NOTIFY:Lcom/wandoujia/p4/settings/SettingActivityHelper$SettingActivityLabel;


# instance fields
.field private c:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 20
    new-instance v0, Lcom/wandoujia/p4/settings/SettingActivityHelper$SettingActivityLabel;

    const-string v1, "MAIN"

    const-class v2, Lcom/wandoujia/p4/settings/MainSettingActivity;

    invoke-direct {v0, v1, v3, v2}, Lcom/wandoujia/p4/settings/SettingActivityHelper$SettingActivityLabel;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/wandoujia/p4/settings/SettingActivityHelper$SettingActivityLabel;->MAIN:Lcom/wandoujia/p4/settings/SettingActivityHelper$SettingActivityLabel;

    .line 21
    new-instance v0, Lcom/wandoujia/p4/settings/SettingActivityHelper$SettingActivityLabel;

    const-string v1, "NOTIFY"

    const-class v2, Lcom/wandoujia/p4/settings/NotifySettingActivity;

    invoke-direct {v0, v1, v4, v2}, Lcom/wandoujia/p4/settings/SettingActivityHelper$SettingActivityLabel;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/wandoujia/p4/settings/SettingActivityHelper$SettingActivityLabel;->NOTIFY:Lcom/wandoujia/p4/settings/SettingActivityHelper$SettingActivityLabel;

    .line 22
    new-instance v0, Lcom/wandoujia/p4/settings/SettingActivityHelper$SettingActivityLabel;

    const-string v1, "ABOUT"

    const-class v2, Lcom/wandoujia/p4/settings/AboutSettingActivity;

    invoke-direct {v0, v1, v5, v2}, Lcom/wandoujia/p4/settings/SettingActivityHelper$SettingActivityLabel;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/wandoujia/p4/settings/SettingActivityHelper$SettingActivityLabel;->ABOUT:Lcom/wandoujia/p4/settings/SettingActivityHelper$SettingActivityLabel;

    .line 19
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/wandoujia/p4/settings/SettingActivityHelper$SettingActivityLabel;

    sget-object v1, Lcom/wandoujia/p4/settings/SettingActivityHelper$SettingActivityLabel;->MAIN:Lcom/wandoujia/p4/settings/SettingActivityHelper$SettingActivityLabel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/p4/settings/SettingActivityHelper$SettingActivityLabel;->NOTIFY:Lcom/wandoujia/p4/settings/SettingActivityHelper$SettingActivityLabel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/p4/settings/SettingActivityHelper$SettingActivityLabel;->ABOUT:Lcom/wandoujia/p4/settings/SettingActivityHelper$SettingActivityLabel;

    aput-object v1, v0, v5

    sput-object v0, Lcom/wandoujia/p4/settings/SettingActivityHelper$SettingActivityLabel;->$VALUES:[Lcom/wandoujia/p4/settings/SettingActivityHelper$SettingActivityLabel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Class;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    iput-object p3, p0, Lcom/wandoujia/p4/settings/SettingActivityHelper$SettingActivityLabel;->c:Ljava/lang/Class;

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/wandoujia/p4/settings/SettingActivityHelper$SettingActivityLabel;)Ljava/lang/Class;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/wandoujia/p4/settings/SettingActivityHelper$SettingActivityLabel;->c:Ljava/lang/Class;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/p4/settings/SettingActivityHelper$SettingActivityLabel;
    .locals 1
    .parameter

    .prologue
    .line 19
    const-class v0, Lcom/wandoujia/p4/settings/SettingActivityHelper$SettingActivityLabel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/settings/SettingActivityHelper$SettingActivityLabel;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/p4/settings/SettingActivityHelper$SettingActivityLabel;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/wandoujia/p4/settings/SettingActivityHelper$SettingActivityLabel;->$VALUES:[Lcom/wandoujia/p4/settings/SettingActivityHelper$SettingActivityLabel;

    invoke-virtual {v0}, [Lcom/wandoujia/p4/settings/SettingActivityHelper$SettingActivityLabel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/p4/settings/SettingActivityHelper$SettingActivityLabel;

    return-object v0
.end method
