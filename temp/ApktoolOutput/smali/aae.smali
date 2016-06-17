.class public final Laae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/alipay/android/mini/window/sdk/MiniPayActivity;

.field private final synthetic b:Landroid/content/Context;

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alipay/android/mini/window/sdk/MiniPayActivity;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Laae;->a:Lcom/alipay/android/mini/window/sdk/MiniPayActivity;

    iput-object p2, p0, Laae;->b:Landroid/content/Context;

    iput-object p3, p0, Laae;->c:Ljava/lang/String;

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Laae;->a:Lcom/alipay/android/mini/window/sdk/MiniPayActivity;

    invoke-static {v0}, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->a(Lcom/alipay/android/mini/window/sdk/MiniPayActivity;)V

    .line 234
    iget-object v0, p0, Laae;->b:Landroid/content/Context;

    iget-object v1, p0, Laae;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Ld;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 236
    return-void
.end method
