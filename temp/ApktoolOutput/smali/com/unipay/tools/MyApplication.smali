.class public Lcom/unipay/tools/MyApplication;
.super Landroid/app/Application;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "1.3.0C"

    sput-object v0, Lcom/unipay/tools/MyApplication;->a:Ljava/lang/String;

    const-string v0, "130"

    sput-object v0, Lcom/unipay/tools/MyApplication;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method
