.class final Laea;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lafs;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lafs;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Laea;->a:Lafs;

    iput-object p2, p0, Laea;->b:Ljava/lang/String;

    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 443
    iget-object v0, p0, Laea;->a:Lafs;

    invoke-static {v0}, Lafs;->a(Lafs;)Lcom/alipay/android/mini/widget/CustomEditText;

    move-result-object v0

    iget-object v1, p0, Laea;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/widget/CustomEditText;->setText(Ljava/lang/CharSequence;)V

    .line 444
    return-void
.end method
