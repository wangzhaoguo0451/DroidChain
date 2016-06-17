.class public final enum Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;
.super Ljava/lang/Enum;
.source "LocalAppChangedListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;

.field public static final enum INCONSISTENT_CERTIFICATES:Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;

.field public static final enum INSUFFICIENT_STORAGE:Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;

.field public static final enum INTERRUPTED_ERROR:Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;

.field public static final enum IO_ERROR:Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;

.field public static final enum NO_PERMISSION_ERROR:Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;

.field public static final enum PACKAGE_NAME_ERROR:Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;

.field public static final enum PACKAGE_PARSE_ERROR:Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;

.field public static final enum ROOTKIT_INTERNAL_ERROR:Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;

.field public static final enum STORAGE_ERROR:Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;

.field public static final enum TIMEOUT_ERROR:Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;

.field public static final enum UNKNOWN:Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 131
    new-instance v0, Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;->UNKNOWN:Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;

    .line 132
    new-instance v0, Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;

    const-string v1, "IO_ERROR"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;->IO_ERROR:Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;

    .line 133
    new-instance v0, Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;

    const-string v1, "ROOTKIT_INTERNAL_ERROR"

    invoke-direct {v0, v1, v5}, Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;->ROOTKIT_INTERNAL_ERROR:Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;

    .line 134
    new-instance v0, Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;

    const-string v1, "TIMEOUT_ERROR"

    invoke-direct {v0, v1, v6}, Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;->TIMEOUT_ERROR:Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;

    .line 135
    new-instance v0, Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;

    const-string v1, "INTERRUPTED_ERROR"

    invoke-direct {v0, v1, v7}, Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;->INTERRUPTED_ERROR:Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;

    .line 136
    new-instance v0, Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;

    const-string v1, "STORAGE_ERROR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;->STORAGE_ERROR:Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;

    .line 137
    new-instance v0, Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;

    const-string v1, "INCONSISTENT_CERTIFICATES"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;->INCONSISTENT_CERTIFICATES:Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;

    .line 138
    new-instance v0, Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;

    const-string v1, "INSUFFICIENT_STORAGE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;->INSUFFICIENT_STORAGE:Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;

    .line 139
    new-instance v0, Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;

    const-string v1, "PACKAGE_PARSE_ERROR"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;->PACKAGE_PARSE_ERROR:Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;

    .line 140
    new-instance v0, Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;

    const-string v1, "PACKAGE_NAME_ERROR"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;->PACKAGE_NAME_ERROR:Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;

    .line 141
    new-instance v0, Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;

    const-string v1, "NO_PERMISSION_ERROR"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;->NO_PERMISSION_ERROR:Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;

    .line 130
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;

    sget-object v1, Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;->UNKNOWN:Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;->IO_ERROR:Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;->ROOTKIT_INTERNAL_ERROR:Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;->TIMEOUT_ERROR:Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;

    aput-object v1, v0, v6

    sget-object v1, Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;->INTERRUPTED_ERROR:Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;->STORAGE_ERROR:Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;->INCONSISTENT_CERTIFICATES:Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;->INSUFFICIENT_STORAGE:Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;->PACKAGE_PARSE_ERROR:Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;->PACKAGE_NAME_ERROR:Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;->NO_PERMISSION_ERROR:Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;

    aput-object v2, v0, v1

    sput-object v0, Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;->$VALUES:[Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;

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
    .line 130
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromCode(I)Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;
    .locals 1
    .parameter

    .prologue
    .line 144
    packed-switch p0, :pswitch_data_0

    .line 166
    sget-object v0, Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;->UNKNOWN:Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;

    :goto_0
    return-object v0

    .line 146
    :pswitch_0
    sget-object v0, Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;->IO_ERROR:Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;

    goto :goto_0

    .line 148
    :pswitch_1
    sget-object v0, Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;->ROOTKIT_INTERNAL_ERROR:Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;

    goto :goto_0

    .line 150
    :pswitch_2
    sget-object v0, Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;->TIMEOUT_ERROR:Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;

    goto :goto_0

    .line 152
    :pswitch_3
    sget-object v0, Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;->INTERRUPTED_ERROR:Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;

    goto :goto_0

    .line 154
    :pswitch_4
    sget-object v0, Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;->STORAGE_ERROR:Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;

    goto :goto_0

    .line 156
    :pswitch_5
    sget-object v0, Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;->INCONSISTENT_CERTIFICATES:Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;

    goto :goto_0

    .line 158
    :pswitch_6
    sget-object v0, Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;->INSUFFICIENT_STORAGE:Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;

    goto :goto_0

    .line 160
    :pswitch_7
    sget-object v0, Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;->PACKAGE_PARSE_ERROR:Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;

    goto :goto_0

    .line 162
    :pswitch_8
    sget-object v0, Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;->PACKAGE_NAME_ERROR:Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;

    goto :goto_0

    .line 164
    :pswitch_9
    sget-object v0, Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;->NO_PERMISSION_ERROR:Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;

    goto :goto_0

    .line 144
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;
    .locals 1
    .parameter

    .prologue
    .line 130
    const-class v0, Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;
    .locals 1

    .prologue
    .line 130
    sget-object v0, Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;->$VALUES:[Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;

    invoke-virtual {v0}, [Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;

    return-object v0
.end method
