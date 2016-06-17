.class final Lafv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lafs;


# direct methods
.method constructor <init>(Lafs;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lafv;->a:Lafs;

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lafv;->a:Lafs;

    invoke-static {v0}, Lafs;->a(Lafs;)Lcom/alipay/android/mini/widget/CustomEditText;

    move-result-object v0

    invoke-static {v0}, Lafz;->a(Landroid/widget/EditText;)V

    .line 207
    return-void
.end method
